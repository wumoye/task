require "sqlite3"
class Student 

    def initialize(command)
        @command = command
        @db = SQLite3::Database.open 'school.db'
        @db.execute "CREATE TABLE IF NOT EXISTS  students(id INT, name TEXT)"
    end

    def sutudent_create
        p "idを入力してください"
        id = gets.to_i
        p "nameを入力してください"
        name = gets.chomp
        @db.execute "INSERT INTO students(id,name) values(?,?)", id,name
        p "登録しました"
    end


    def sutudent_select
        select = @db.execute "SELECT * FROM students"
        if select == []
            p "table empty"
        else
            select.each do |row|
                p "[#{row[0]}]#{row[1]}"
            end
         end
    end 

    def sutudent_delete
        p "削除するidを入力してください"
        id = gets.chomp
        @db.execute "DELETE FROM students WHERE id=?" ,id
        p "id: #{id} を削除しました"
    end
end

def getCommands
    command = ""
    while command != "e"    
        p "studentテーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)"
        command = ""
        command = gets.chomp
        student = Student.new(command)
        
        if(command == "i")
            student.sutudent_create
        elsif(command == "s")
            student.sutudent_select
        elsif(command == "d")
            student.sutudent_delete
        end
    end
    p "終了"
end


getCommands