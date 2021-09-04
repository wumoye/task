# Q9
class Q9

    attr_accessor :name

    def initialize(user_name,phone_num,postal_code,email)
        @user_name = user_name
        @phone_num = phone_num
        @postal_code = postal_code
        @email = email
    end
    
    def check_user_name
        puts "ユーザー名を入力してください(先頭@の大文字3文字以上)"
        while @user_name == ""
            user_name = gets.chomp
            if /^@[A-Z]{3,}/ =~ user_name
                @user_name = user_name
            else
                if user_name.match(/^@/) == nil
                    puts "invalid: 先頭@を入力してください"
                    @user_name = ""
                end

                if /[^A-Z]/ =~ user_name
                    puts "invalid: 大文字で入力してください"
                    @user_name = ""
                end
            
                puts "invalid: ユーザ名を入力してください(先頭@の大文字3文字以上)"
                @user_name = ""
            end
        end
    end

    def check_phone_num
        puts "電話番号を入力してください(ハイフン入れてください)"
        while @phone_num == ""
            phone_num = gets.chomp
            if /^0[5-9]0-[0-9]{4}-[0-9]{4}$/ =~ phone_num
                @phone_num = phone_num
            else
                puts "invalid: 電話番号が不正です"
                @phone_num = ""
            end
        end
    end

    def check_postal_code
        puts "郵便番号を入力してください"
        while @postal_code == ""
            postal_code = gets.chomp
            if /\A\d{3}[-]\d{4}\z/ =~ postal_code
                @postal_code = postal_code
            else
                puts "invalid: 郵便番号が不正です。"
            end
        end
    end

    def check_email
        puts "メールアドレスを入力してください"
        while @email == ""
            email = gets.chomp
            if /\A\S+@\S+\.\S+\z/ =~ email
                @email = email
            else
                puts "invalid: メールアドレスが不正です。"
                @email = ""
            end
        end
    end

    def complete
        puts "ユーザー名: #{@user_name}"
        puts "電話番号: #{@phone_num}"
        puts "郵便番号: #{@postal_code}"
        puts "メールアドレス: #{@email}"
    end
end

def test_user
    user_name = ""
    phone_num = ""
    postal_code = ""
    email = ""

    user = Q9.new(user_name,phone_num,email,postal_code)
    user.check_user_name
    user.check_phone_num
    user.check_postal_code
    user.check_email

    user.complete
end

test_user

