 5.times do
  puts "Hello World!"
 end

9.times do |i|

print i+1

print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*2}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*3}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*4}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*5}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*6}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*7}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*8}"

	print " "

end

puts "\n"

(1..9).each do |i|

	print "#{i*9}"

	print " "

end

puts ""


(1..100).each { |i| puts "#{i} fizz" if i%3==0}
(1..100).each { |i| puts "#{i} Buzz" if i%5==0}
(1..100).each { |i| puts "#{i} fizz Buzz" if i%3==0 && i%5==0}
(1..100).each { |i| puts "#{i}" if i%3==1 && i%5==1}
