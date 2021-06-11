t = ARGV[0].to_i
puts t

if t == (4..10) then
    puts "おはよう"
elsif t == (11..18) then
    puts "こんにちは"
elsif t == (1..3) || t == (19..24)
    puts "こんばんは"
end

case t
when 4..10 then
    puts "おはよう"
when 11..18 then
    puts "こんにちは"
when 19..24, 1..3 then
    puts "こんばんは"
end
