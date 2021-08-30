class Validator

  def initialize()
    @at_symbol_regex = /^@/
    @three_or_more_regex = /^.[A-Z]{3,}$/
    @phone_number_regex = /^(0[0-9]{2}-[0-9]{4}-[0-9]{4}|0[0-9]{3}-[0-9]{3}-[0-9]{3}|0[0-9]{2}-[0-9]{3}-[0-9]{4})$/
    @postal_code_regex = /^([0-9]{3}-?[0-9]{4}|[0-9]{4}-?[0-9]{3})$/
    @email_address_regex = /^[a-zA-Z0-9(+-_.!$#%)]{1,}@[a-zA-Z0-9]{1,}.+[a-zA-Z0-9]{1,}$/
  end

  def username(input)
    valid = true
    if not self.starts_with_at_symbol(input)
      p 'invalid: 先頭@を入力してください' 
      valid = false
    end

    if not self.uses_3_or_more_capital_letters(input)
      p 'invalid: 大文字で入力してください' 
      valid = false
    end

    valid
  end

  def phone_number(input)
    valid = true
    if not self.is_valid_phone_number(input)
      p 'invalid: 電話番号が不正です'
      valid = false
    end
    valid
  end

  def postal_code(input)
    valid = true
    if not self.is_valid_postal_code(input)
      p 'invalid: 郵便番号が不正です'
      valid = false
    end
    valid
  end

  def email_address(input)
    valid = true
    if not self.is_valid_email_address(input)
      p 'invalid: メールアドレスが不正です'
      valid = false
    end
    valid
  end

  private
  
  attr_writer :at_symbol_regex
  attr_writer :three_or_more_regex
  attr_writer :phone_number_regex
  attr_writer :phone_number_regex
  attr_writer :postal_code_regex
  attr_writer :email_address_regex

  def starts_with_at_symbol(input)
    !!@at_symbol_regex.match(input)
  end

  def uses_3_or_more_capital_letters(input)
    !!@three_or_more_regex.match(input)
  end

  def is_valid_phone_number(input)
    !!@phone_number_regex.match(input)
  end

  def is_valid_postal_code(input)
    !!@postal_code_regex.match(input)
  end

  def is_valid_email_address(input)
    !!@email_address_regex.match(input)
  end

end