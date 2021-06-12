i = ARGV[0].to_i

case i
when 4..10 then
  puts "おはよう"
when 11..18 then
  puts "こんにちは"
when 19..24, 1..3 then
  puts "こんばんは"
end

if (4..10) === i then
  puts "おはよう"
elsif (11..18) === i then
  puts "こんにちは"
elsif (19..24) === i or (1..3) === i then
  puts "こんばんは"
end