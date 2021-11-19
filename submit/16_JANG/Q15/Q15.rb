require "sqlite3"

class DbTest 
  def initialize(com)
    @com = com
    @db = SQLite3::Database.open 'student.db'
    @db.execute "CREATE TABLE IF NOT EXISTS student(id INT not null PRIMARY KEY, name VARCHAR)"
  end

  def select
    select = @db.execute "SELECT * FROM student"
    if select === []
      puts 'table empty'
    else
      select.each do |row|
        puts '[#{row[0]}]#{row[1]}'
      end
    end
  end 

  def create
    begin
      puts 'idを入力してください'
      id = gets.to_i
      puts 'nameを入力してください'
      name = gets.chomp
      @db.execute "INSERT INTO student(id, name) values(?, ?)", id,name
    rescue
      if id.is_a?(Integer)
        puts 'idは数字で入力してね！！！！！！！！'
      end
    end
  end

  def delete
    begin
      puts '削除するidを入力してください'
      id = gets.to_i
      @db.execute "DELETE FROM student WHERE id=?" ,id
      puts '削除成功'
    rescue
      if id.is_a?(Integer)
        puts 'エラー'
      end
    end
  end
end



def loopInTable
  com = ''
  puts 'studentテーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)'
  while com
    com = gets.chomp
    st = DbTest.new(com)
    if com === 's'
      st.select
    elsif com === 'i'
      st.create
    elsif com === 'd'
      st.delete
    elsif com === 'e'
      puts '終了'
      exit
    end
  end
end


loopInTable 