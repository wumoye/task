
# 身長(m), 体重(kg) で入力
hight = ARGV[0].to_f
weight = ARGV[1].to_f

bmi = (weight / hight**2).round(2)

puts "BMI = " , bmi

case 
when bmi < 18.5 
  puts "低体重"
when bmi < 25
  puts "普通体重"
when bmi < 30
  puts "肥満(1度)"
when bmi < 35
  puts "肥満(2度)"
when bmi < 40
  puts "肥満(3度)"
when bmi >= 40
  puts "肥満(4度)"
end

