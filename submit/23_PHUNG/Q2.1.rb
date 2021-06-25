=begin

time = 10

case time
when 4..10 
 puts "おはようございます。"
when 11..18 
 puts "こんにちは。"
when 19..24, 1..3 
 puts "こんばんは。"
end

=end

time = 4

if (4..10) === time then
puts "おはようございます。"
  elsif (11..18) === time  then
puts "こんにちは。"
  elsif (19..24) === time or (1..3) === time then 
puts "こんばんは。"
end
