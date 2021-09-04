class Account
	attr_accessor :name
	attr_accessor :phone
	attr_accessor :address
	attr_accessor :mail

	def initialize(name, phone, address, mail)
		@name = name
		@phone = phone
		@address = address
		@mail = mail
	end

	def print
		puts "ゆーざ名 : #{name}"
        puts "電話番号 : #{phone}"
        puts "郵便番号 : #{address}"
        puts "メールアドレス : #{mail}"
	end
end

def error_name(e_name)
	error = []
	if /\A[^@].*/.match(e_name)
		error.push("先頭@を入力してください")
	end
	if /\[^A-Z]+/.match(e_name)
		error.push"大文字で入力してください"
	end
	if /@?\A.{0,3}\z/.match(e_name)
		error.push"3文字以上入力してください"
	end
	error.each do |m|
	
		puts "invalid: #{m}"
	end
end

n = 0
while n == 0
	puts "ユーザ名を入力してください(先頭@を大文字３文字以上)"
	name = gets.chomp
	if %r!\A@[A-Z]{3,}\z! =~ name
		n=1;
	else
		error_name(name)
	end
end
while n == 1
	puts "電話番号を入力してください(ハイフンを入れてください)"
	if %r!\A0\d{2}-\d{4}-\d{4}\z! =~ phone ||
    %r!\A0\d{2}-\d{3}-\d{4}\z! =~ phone ||
    %r!\A0\d{3}-\d{4}-\d{4}\z! =~ phone 
        n = 2;
	else
		puts "invalid: 電話番号が不正でう"
	end
end

while n == 2
    puts "郵便番号を入力してください"
    postal = gets.chomp
    if %r!\A\d{7}\z! =~ address || 
    %r!\A\d{7}\z! =~ address
        n = 3;
    else
        puts "invalid: 郵便番号が不正です"
    end
end

while n == 3
	puts "メールアドレスが入力してください"
	mail = gets.chomp
	if %r!\A.+@.@.+\.+.+\z! =~ mail
		n = 4;
	else
		puts "invalid: メールアドレスが不正です"
	end
end

if n == 4
	user = Account.new(name,phone,address,mail)
	user.print
end