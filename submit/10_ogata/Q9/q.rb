puts "ユーザー名を入力してください(先頭@の大文字3文字以上)"
while (/^@[A-Z]{3,}$/ !~ userName = gets) == true do
    if (/^@[A-Z]{3,}$/ !~ userName) == true then
        if (/^@[\w]{3,}$/ !~ userName) == true then
            puts "invalid: 先頭@を入力してください"
            puts "invalid: 大文字で入力してください"
            puts userName
        elsif (/^[\w]{3,}$/ !~ userName) == true then
            puts "invalid: 大文字で入力してください"
            puts userName
        end
        puts ""
    end
end

puts "電話番号を入力してください(ハイフンを入れてください)"
while (/^0[5|6|7|8|9]0-\d{4}-\d{4}$/ !~ phoneNum = gets) == true do
    if (/^0[5|6|7|8|9]0-\d{4}-\d{4}$/ !~ phoneNum) == true then
       puts "invalid: 電話番号が不正です"
       puts phoneNum
    end
end

puts "郵便番号を入力してください"
while (/^[0-9]{3}-*[0-9]{4}$/ !~ address = gets) == true do
    if (/^[0-9]{3}-*[0-9]{4}$/ !~ address) == true then
        puts "invalid: 郵便番号が不正です"
        puts address
    end
end

puts "メールアドレスを入力してください"
while(/^[\w\+\-\_\.\!\$\#\%]+@[\w\.]+\.[\w\.]+$/ !~ email = gets) == true do
    if (/^[\w\+\-\_\.\!\$\#\%]+@[\w\.]+\.[\w\.]+$/ !~ email) == true then
       puts "invalid: メールアドレスが不正です"
       puts email
    end
end

puts "complete"

puts "ユーザー名: #{userName}"
puts "携帯番号: #{phoneNum}"
puts "郵便番号: #{address}"
puts "メールアドレス: #{email}"