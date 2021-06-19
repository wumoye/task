age = ARGV[0].to_i

if age.between?(4,10)
  puts "おはよう"
elsif age.between?(11,18)
  puts "こんにちは"
elsif age.between?(19,24)||age.between?(1,3)
puts "こんばんは"
else
  puts "1~24までの数字を半角で入れてください"
end

