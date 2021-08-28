#1
def to_eng_month(num)
    months = {
      1 => "January",
      2 => "February",
      3 => "March",
      4 => "April",
      5 => "May",
      6 => "June",
      7 => "July",
      8 => "August",
      9 => "September",
      10 => "October",
      11 => "November",
      12 => "December"
    }
    return month[num]
end
  
p to_eng_month(1) 

#2
fruit = {apple: 100, banana: 500, pineapple: 400, melon: 200}

puts fruit

fruit.delete_if { |key, value| value >= 300 } 

puts fruit

#3
fruit = {apple: 100, banana: 500, pineapple: 400, melon: 200}
sum = 0
fruit.each do|key, value| 
    puts "#{key} = #{value} yen"
    sum += value
end

puts "sum = #{sum}yen"