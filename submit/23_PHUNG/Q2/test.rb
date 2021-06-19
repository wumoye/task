time = ARGV[0].to_i
case time = 11
  when 4..10
    puts "おはよう"
  when 11..18
    puts "こんにちは"
  when 18..24
    puts "こんばんは"
  when 1..3
    puts "こんばんは"
  else
    puts "input 1 to 24"
 end
  
height = ARGV[1].to_f
weight = ARGV[1].to_f
BMI = (weight / (height*height)).to_f

case BMI
  when 1..18.5
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

