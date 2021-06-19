
input = ARGV[0].to_i

=begin
if (4..10) === input then
		puts "おはよう"
elsif (11.. 18) === input then
		puts "こんにちは"
elsif (19..24) || (1..3)=== input then
		puts "こんばんは"

end
=end

case input
when (1..3) then
	puts "こんばんは"
when (4..10) then
	puts "おはよう"
when (11.. 18) then
	puts "こんにちは"
when (19..24) then
	puts "こんばんは"

end