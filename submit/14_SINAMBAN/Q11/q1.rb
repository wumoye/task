# 1

1.upto(5) {|i| 
  i.times do 
    print '*'
  end
  puts ''
}

# 2

10.downto(1) {|i| 
  i.times do
    print '*'
  end
  puts ''
}

# 3

ary = [1, 2, 3, 4, 5]

4.downto(2) {|i| 
  p ary.reverse[1..i]
}

# 4

ary = (-15..-10).to_a

divisible_by_3 = []

ary.each do |v| 
  divisible_by_3.push(v) if v % 3 == 0
end

p divisible_by_3