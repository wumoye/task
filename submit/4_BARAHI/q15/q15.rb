p "studentテーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)"
require "sqlite3"
class User 
    
    def initialize(command)
        @command = command
        @db = SQLite3::Database.open 'test.db'
        @db.execute "CREATE TABLE IF NOT EXISTS  users(id INT not null ,name TEXT)"
    end

    def createUsers
        p "idを入力してください"
        id = gets.to_i
        p "nameを入力してください"
        name = gets.chomp
        @db.execute "INSERT INTO users(id,name) values(?,?)", id,name
    end


    def showUsers
        select = @db.execute "SELECT * FROM users"
        if select == []
             p "table empty"
        else
             select.each do |row|
                 p "#{row[0]}:#{row[1]}"
             end
         end
    end 

    def deleteUsers
        p "削除するidを入力してください"
        id = gets.chomp

        @db.execute "DELETE FROM users WHERE id=?" ,id
    end

end



def getCommands
    command = ""
    while command != "e"
    command = gets.chomp
    user = User.new(command)
    if(command == "s")
        user.showUsers
    elsif(command == "i")
        user.createUsers
    elsif(command == "d")
        user.deleteUsers
    end
    end
end


getCommands