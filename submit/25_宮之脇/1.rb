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

