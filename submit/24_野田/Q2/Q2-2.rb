weight = ARGV[0].to_i
height = ARGV[1].to_i

print "体重(kg): ",weight,"kg\n"
print "身長(m): ",height,"m\n"
puts "正しい数字が表示されない場合は引数に正しい順番が入ってるか確認をしてください,体重,身長の順番で単位を入れずに入力してください"

height2 = height*height

sum = weight.to_f/height2
bmi = sum*10000
bmi2 = bmi.floor(2)
# print bmi2,"\n"

# bmi2 = 410.0

print "BMI: ",bmi2,"\n"

case bmi2
when 0.0..18.4
  puts "低体重"
when 18.5..24.9
  puts "普通体重"
when 25.0..29.9
  puts "肥満（１度）"
when 30.0..34.9
  puts "肥満（２度）"
when 35.0..39.9
    puts "肥満（３度）"
when 40..nil
    puts "肥満（４度）"
else
  puts "数値が異常です"
end
