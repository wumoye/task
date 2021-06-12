#BMI＝体重(kg) ÷ {身長(m) Ｘ 身長(m)}
p '体重を入力してください(kg)'
kg = gets.to_f

puts "\n身長を入力してください(cm)"
cm = gets.to_f
m = cm.to_f / 100

BMI = kg  / (m * m)

puts "あなたのBMIの値:",BMI

case BMI
when 0..18.5 then puts "低体重"
when 18.5..25 then puts "普通体重"
when 25..30 then puts "肥満（１度）"
when 30..35 then puts "肥満（２度）"
when 35..40 then pits "肥満（3度）"
else  puts "肥満（4度）"
end 