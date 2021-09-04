class User
    attr_accessor :name
  
    def initialize(username, phonenumber, postcode, mail)
      @username = username
      @phonenumber = phonenumber
      @postcode = postcode
      @mail = mail
    end
  
    def show
      puts "ユーザ名:#{@username}"
    puts "電話番号: #{@phonenumber}"
      puts "郵便番号: #{@postcode}"
      puts "メールアドレス:#{@mail}"
    end
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

  def postCode
    puts "郵便番号を入力してください"
    while @postCode == ""
      postCode = gets.chomp
      if @postCodeRegex =~ postCode
        @postCode = postCode
      else
        @postCode = ""
        puts "郵便番号が不正です"
      end
    end
  end

  def mail
    puts "メールアドレスを入力してください"
    while @mail == ""
      mail = gets.chomp
      if @mailRegex =~ mail
          @mail = mail
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
    puts "postCode: #{@postCode}"
    puts "mail: #{@mail}"
    puts "------------"
  end

end



def createUser
  username = ""
  phoneNumber = ""
  postCode = ""
  mail = ""

  user = User.new(username,phoneNumber,postCode,mail)
  user.username
  user.phoneNumber
  user.postCode
  user.mail

  user.complete
end

createUser  