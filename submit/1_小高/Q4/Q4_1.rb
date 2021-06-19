year = 1900..2019

year.each{|num|
	if(num % 4 === 0)then
			if(num % 100 === 0)then print num ,":平年\n"
			else print num, ":閏年\n"
			end
	else print num, ":平年\n"
	end



}


