data = {apple: 100,banana: 500,pynappel: 400,meron: 200}
 sum = 0
 data.each do |key, value| 
     puts "#{key} = #{value} yen"
     sum += value
 end
 puts "sum = #{sum} yen" 