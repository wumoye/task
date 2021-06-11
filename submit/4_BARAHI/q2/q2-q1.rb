timeHr = ARGV[0].to_i

if timeHr > 4 && timeHr < 10
    puts "ohayou"

elsif timeHr > 11 && timeHr < 18
    puts "konichiwa"

else
    puts "konnbanwa"

end

case timeHr
    when 4..19 then p "ohayou"
    when 11..18 then p "konichiwa"
    when 19..24,1..3 then p "konbanwa"
end