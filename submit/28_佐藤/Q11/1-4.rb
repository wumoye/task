ary = (-15..-10).to_a

newary = ary.select {|x| x % 3 == 0}
print newary