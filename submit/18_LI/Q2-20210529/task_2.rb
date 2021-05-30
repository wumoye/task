height = ARGV[0].to_f
weight = ARGV[1].to_f

BMI = (weight / (height*height)).round(1)

case BMI
when 0...18.5
  puts '低体重'
when 18.5...30
  puts '普通体重'
when 30...35
  puts '肥満（１度）'
when 35...40
  puts '肥満（２度）'
else
  puts '肥満（４度）'
end
