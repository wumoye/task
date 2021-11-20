p "studentテーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)"
 require "sqlite3"
 class Database 

     def initialize(cmd)
         @cmd = cmd
         @db = SQLite3::Database.open 'test.db'
         @db.execute "ユーザが存在しない場合は、テーブルを作成します。"
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
         p "idの入力"
         id = gets.to_i
         p "nameの入力"
         name = gets.chomp
         @db.execute "INSERT INTO users(id,name) values(?,?)", id,name
     end


     

     def delete
         p "idの削除"
         id = gets.chomp

         @db.execute "DELETE FROM users WHERE id=?" ,id
     end

 end



 def getCmd
     cmd = ""
     while cmd != "e"
     cmd = gets.chomp
     database = Database.new(cmd)
     if(cmd == "s")
         database.select
     elsif(cmd == "i")
         database.create
     elsif(cmd == "d")
         database.delete
     end
     end
 end


 getCmd 
