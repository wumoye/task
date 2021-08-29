class User
  attr_accessor :user_name, :telephone_number, :post_code, :email

  def initialize(user_name, telephone_number, post_code, email)
    @user_name = user_name
    @telephone_number = telephone_number
    @post_code = post_code
    @email = email
  end

  def show
    puts "ユーザ名:#{@user_name}\n電話番号: #{@telephone_number}\n郵便番号: #{@post_code}\nメールアドレス:#{@email}"
  end
end

def make_param_from_regexp(param_list)
  @name = ''
  @invalid = ''
  message = param_list['message']
  puts message
  loop do
    @name = gets.chomp
    if @name.empty?
      puts 'required'
      next
    end
    param_list['param'].each do |param|
      if %r!#{param[0]}! =~ @name
      else
        @invalid += "invalid: #{param[1]}\n"
      end
    end
    if (param_list['name'] == 'telephone_number') || (param_list['name'] == 'post_code')
      rename = @name.gsub(/-/, '')
      if %r!^\d+$! =~ rename
      else
        @invalid += "invalid: 数値のみ\n"
      end
    end
    break if @invalid.empty?

    puts @invalid
    @invalid = ''
    puts "\n#{message}"
  end
  @name
end

def create_user

  # make user_name
  user_name_hash = { 'name' => 'user_name',
                     'message' => 'ユーザ名を入力してください(先頭@の大文字3文字以上)',
                     'param' => [%w[(^@) 先頭@を入力してください],
                                 %w[(^@.{4,}$) @を抜いて最低3文字以上を入力してください],
                                 %w[(^@[A-Z]{4,}$) アルファベット大文字で入力してください]] }
  @user_name = make_param_from_regexp(user_name_hash)

  # make telephone_number
  telephone_number_hash = { 'name' => 'telephone_number',
                            'message' => '電話番号を入力してください(ハイフン入れてください)',
                            'param' => [%w[(^0) 先頭0を入力してください],
                                        %w[(^0(\d{2}-\d{4}-\d{4}|\d{3}-\d{3}-\d{3}|\d{2}-\d{3}-\d{4})$) 電話番号が不正です。11桁または10桁（ハイフン含まない）の電話番号を入力してください]] }
  @telephone_number = make_param_from_regexp(telephone_number_hash)

  # make post_code
  post_code_hash = { 'name' => 'post_code',
                     'message' => '郵便番号を入力してください)',
                     'param' => [%w[(^(\d{7}|\d{3}-\d{4})$) 郵便番号が不正です。7桁の郵便番号を入力してください]] }
  @post_code = make_param_from_regexp(post_code_hash)

  # make email
  email_hash = { 'name' => 'email',
                 'message' => 'メールアドレスを入力してください)',
                 'param' => [%w[(\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}) メールアドレスが不正です]] }
  @email = make_param_from_regexp(email_hash)
  puts 'complete'

  # create user
  user = User.new(@user_name, @telephone_number, @post_code, @email)
  user.show
end

create_user

