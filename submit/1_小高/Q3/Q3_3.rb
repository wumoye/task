puts "1~100の数字を入れてください"
num = gets.to_i
print "入力された数字:",num,"\n"

if  !((num >= 1) && (num <= 100)) then
	puts "1~100の数字を入力してください"
	exit
end

if(num % 3 == 3)&&(num % 5 ==  0) then puts "Fizz Buzz"
	elsif(num % 3 == 3) then puts "Fizz"
	elsif(num % 5 == 0) then puts "Buzz"
	else puts num
end	
