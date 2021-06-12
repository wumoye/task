x = 1..9
y = 1..9

x.each do |i|
	y.each do |y|
		if(i*y < 10) then print "0",i*y," " 
		else print i * y," " end
		end
puts
end 
