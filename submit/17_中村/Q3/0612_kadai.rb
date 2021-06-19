
5.times do
	puts "Hello World!"
end

puts "\n"

(1..9).each do |y|
    (1..9).each do |x|
		if (x * y) < 10
			print 0
        	print (x * y)
			print " "
		else
			print (x * y)
			print " "
		end
    end
	  puts "\n"
end

puts "\n"

for num in 1..100 do
	if(num) % 15 == 0
		print "Fizz Buzz,"
	elsif(num) % 3 == 0
		print "Fizz,"
	elsif(num) % 5 == 0
		print "Buzz,"
	else
		print num
		print ","
	end
end