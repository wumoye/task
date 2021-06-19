class Foo
	def a(num)
		for i in 1..num do
		for j in 1..num do
		x = i * j

		if (x < 10)then print "0",x," "
		else print x," "
		end
		end



		print "\n"
		end
	end
end



puts "数字を入れてください"
num = gets.to_i
print "入力された時間:",num,"\n"

foo = Foo.new
foo.a(num)
