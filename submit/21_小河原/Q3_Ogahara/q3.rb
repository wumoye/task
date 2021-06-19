5.times do
	print "Hello! World!\n"

end


=begin

=end

(1..9).each do |i|
	(1..9).each do |j|
	#print i,"*",j," = ",(i * j)," "
	r = i * j
		if (r <= 9)
			print "0",r
		else
			print r
		end


	end
	print "\n"

end
	

