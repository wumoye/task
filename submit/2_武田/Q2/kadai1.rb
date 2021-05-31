num = ARGV[0].to_i

case num
when  4..10
	puts "おはよう"
when 11..18
	puts "こんにちは"
when 19..24, 1..3
	puts "こんばんは"
end


if (4..10) === num then 
	puts "おはよう"
elsif (11..18) === num then
	puts "こんにちは"
elsif (19..24) === num || (1..3) === num then
	puts "こんばんは"
end
	
