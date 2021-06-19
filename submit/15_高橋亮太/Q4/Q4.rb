# うるう年
def leap_year(year)
    if year%100 == 0 && year%400 != 0 then
        puts "#{year}年：平年"
    elsif year%4 == 0 then
        puts "#{year}年：閏年"
    else
        puts "#{year}年：平年"
    end
end

for num in 1900..2021 do
    leap_year(num)
end

puts "\n"

# 掛け算表
def multi_table(num)
    for i in 1..num do
        for j in 1..num do
            print sprintf("%02d", i*j), " "
        end

        puts "\n"
    end
end

multi_table(ARGV[0].to_i)
puts "\n"
