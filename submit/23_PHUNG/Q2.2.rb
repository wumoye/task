h = 165
w = 62

BMI = w / (h * h / 10000)

case BMI
  when 0..18.5 
puts "低体重"
  when 18.5..25 
puts "普通体重"
  when 25..30 
puts "肥満（１度）"
  when 30..35 
puts "肥満（２度）"
  when 35..40 
puts "肥満（３度）"
else 
puts "肥満（４度）"
end