year = 1900..2019

class Foo
	def a(num)
		if(num % 4 === 0)then
			if(num % 100 === 0)then return false
			else return true
			end
		else return false
		end


	end





end

year.each{|num|
#b = a(b)
foo=Foo.new


if (foo.a(year)=false)then  print num ,":平年\n"
else print num, ":閏年\n"

}
