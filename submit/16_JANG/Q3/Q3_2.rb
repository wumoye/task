number = 1..9

(number).each do |i|  
  (number).each do |j|
    z = i * j < 10 ? " 0" : " "
    size = z + (i*j).to_s
    print size
  end
  print "\n"
end