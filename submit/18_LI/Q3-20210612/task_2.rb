lis = [1, 2, 3, 4, 5, 6, 7, 8, 9]
lis.each do |i|
  lis.each do |j|
    print "#{"%02d" % (i * j)} "
  end
  print "\n"
end
