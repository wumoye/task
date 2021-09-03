class User 

  attr_accessor :name

  def initialize(username,phoneNumber,email,zipCode)
    @username = username
    @phoneNumber = phoneNumber
    @zipCode = zipCode
    @email = email
    @userNameRegex = %r!@[A-Z][A-Z][A-Z]!
    @PhoneNumberRegex = %r!\A0[5-9]0-\d{4}-\d{4}\z|\A0\d{3}-\d{3}-\d{3}\z|\A0\d{2}-\d{3}-\d{4}\z!
    @zipCodeRegex = %r!\d{3}-\d{4}|\d{7}!
    @emailRegex = /[\w+-.$#%!]+@[\w|+|-|_|$|#|%].+[\w|+|-|_|$|#|%]/ 
  end

  def username
    puts "ユーザ名を入力してください(先頭@の大文字3文字以上)"
    while @username == ""
      username = gets.chomp
      if @userNameRegex =~ username
        @username = username
      else
        @username = ""
        puts "invalid: 先頭@を入力してください"
        puts "invalid: 大文字で入力してください"
      end
    end
  end

  def phoneNumber
    puts "電話番号を入力してください(ハイフン入れてください)"
    while @phoneNumber == ""
      phoneNumber = gets.chomp
      if @PhoneNumberRegex =~ phoneNumber
        @phoneNumber = phoneNumber
      else
        @number = ""
        puts "invalid: 電話番号が不正です"
      end    
    end
  end
  
  def zipCode
    puts "郵便番号を入力してください"
    while @zipCode == ""
      zipCode = gets.chomp
      if @zipCodeRegex =~ zipCode
        @zipCode = zipCode
      else
        @zipCode = ""
        puts "郵便番号が不正です"
      end
    end
  end

  def email
    puts "メールアドレスを入力してください"
    while @email == ""
      email = gets.chomp
      if @emailRegex =~ email
          @email = email
      else
          emailInput = ""
          puts "メールアドレスが不正です "
      end
    end
  end

  def complete
    puts "----user----"
    puts "username: #{@username}"
    puts "phoneNumber: #{@phoneNumber}"
    puts "zipCode: #{@zipCode}"
    puts "email: #{@email}"
    puts "------------"
  end

end



def createUser
  username = ""
  phoneNumber = ""
  zipCode = ""
  email = ""

  user = User.new(username,phoneNumber,zipCode,email)
  user.username
  user.phoneNumber
  user.zipCode
  user.email

  user.complete
end

createUser 