x = ARGV[0].to_i
y = ARGV[1].to_f

sum = x / (y * y / 10000)

case sum
when 0..18.5 then
  puts "低体重"
when 18.5..25 then
  puts "普通体重"
when 25..30 then
  puts "肥満（１度）"
when 30..35 then
  puts "肥満（２度）"
when 35..40 then
  puts "肥満（３度）"
else
  puts "肥満（４度）"
end