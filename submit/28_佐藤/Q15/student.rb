require 'sqlite3'

#ファイル内にschoolデータベースが存在するか確認する
findFile = File.exist?("school.db")

#schoolデータベースが無かったら、新規で作成する
if findFile == false
    #schoolデータベースの作成
    db = SQLite3::Database.new 'school.db'

    #idとnameを持つstudentsテーブルを作成するSQL
    sql = <<-SQL
    create table students (
        id integer primary key,
        name text
        );
    SQL
    #studentsテーブルを作成
    db.execute(sql)
else #schoolデータベースがあったら、データベースを開く
    db = SQLite3::Database.open 'school.db'
end

#loop文でeが押されるまで実行する
loop do
    p 'studentテーブルへの処理を入力してください。(s:select,i:insert,d:delete,e:exit)'
    #入力を受け取り、string型の変数cに格納する
    c = gets.chomp.to_s

    if c == 's' #sが押されたとき
        #tableを表示する 
        db.execute('select * from students') do |students|
            p students
        end

    elsif c == 'i' #iが押されたとき
        #1.最初にidの入力を受け付けて入力した値をint型の変数addIdに格納
        p 'idを入力してください。'
        addId = gets.to_i

        #2.次にnameの入力を受け付けて入力した値をstring型の変数addNameに格納
        p 'nameを入力してください。'
        addName = gets.chomp.to_s

        #3.idとnameを追加する
        db.execute("insert into students values(#{addId},'#{addName}')")
        p '登録しました。'

    elsif c == 'd' #dが押されたとき
        #1.idを入力する値を受け付けて入力した値をint型の変数deleteIdに格納
        p '削除するidを選択してください。'
        deleteId = gets.to_i

        #2.テーブルの中身を削除する
        db.execute("delete from students where id == '#{deleteId}';")
        p "id #{deleteId} を削除しました。"

    elsif c == 'e' #eが押されたとき
        p '終了'
        #loop文から抜け出す
        break
    else
        p '入力エラーです。'
    end
end


