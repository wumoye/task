
class Registrator
  def initialize(validator)
    @validator = validator
  end

  def register
    username = self.register_username
    phone_number = self.register_phone_number
    postal_code = self.register_postal_code
    email_address = self.register_email_address

    p 'complete'
    p 'ユーザ名: ' + username
    p '電話番号: ' + phone_number
    p '郵便番号: ' + postal_code
    p 'メールアドレス: ' + email_address
  end

  private

  attr_writer :validator

  def register_username
    p 'ユーザ名を入力してください(先頭@の大文字3文字以上)'
    username = gets.chomp
    valid = @validator.username(username)
    while !valid
      username = gets.chomp
      valid = @validator.username(username)
    end
    username
  end

  def register_phone_number
    p '電話番号を入力してください(ハイフン入れてください)'
    phone_number = gets.chomp
    valid = @validator.phone_number(phone_number)
    while !valid
      phone_number = gets.chomp
      valid = @validator.phone_number(phone_number)
    end
    phone_number
  end

  def register_postal_code
    p '郵便番号を入力してください'
    postal_code = gets.chomp
    valid = @validator.postal_code(postal_code)
    while !valid
      postal_code = gets.chomp
      valid = @validator.postal_code(postal_code)
    end
    postal_code
  end

  def register_email_address
    p 'メールアドレスを入力してください'
    email_address = gets.chomp
    valid = @validator.email_address(email_address)
    while !valid
      email_address = gets.chomp
      valid = @validator.email_address(email_address)
    end
    email_address
  end

end