def multi(num)
  (1..num).each do |i|
    (1..num).each do |j|
      z = i * j < 10 ? " 0" : " "
      size = z + (i * j).to_s
      print size
    end
    print "\n"
  end
end

multi(3)