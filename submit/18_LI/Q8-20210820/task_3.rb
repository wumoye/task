task_hash = { apple: 100, banana: 500, pynappel: 400, meron: 200 }
task_hash.each { |key, value| puts "#{key} = #{value} yen" }
sum = task_hash.sum { |key, value| value }
puts "sum = #{sum} yen"

