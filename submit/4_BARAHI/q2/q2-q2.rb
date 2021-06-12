weight = ARGV[0].to_f
height = ARGV[1].to_f

bmi =   weight / (height * height)

puts "your bmi is #{bmi}"

case bmi 
    when bmi < 18.5 then p "低体重"
    when 18.5..25 then p "普通体重"
    when 25..30 then p "肥満（１度）"
    when 30..35 then p "肥満（２度）"
    when 35..40 then p "肥満（3度）"
    when bmi > 40 then p "肥満（4度）"
end