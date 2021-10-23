# 1)
puts '1)'
5.times { |i|
  (i + 1).times {
    print '*'
  }
  puts ""
}

# 2)
puts '2)'
10.downto(1) do |i|
  i.downto(1) { print '*' }
  puts ''
end

# 3)
# [4, 3, 2, 1]
# [4, 3, 2]
# [4, 3]
puts '3)'
ary = [1, 2, 3, 4, 5]
ary1 = ary
ary1.pop
result_ary = ary1.reverse

print result_ary, "\n"
result_ary.pop
print result_ary, "\n"
result_ary.pop
print result_ary, "\n"

# 4)
# ary = (-15..-10).to_a
# [-15, -12]
puts '4)'
ary = (-15..-10).to_a
result_ary = []
ary.each do |i|
  if i % 3 == 0
    result_ary.push(i)
  end
end
print result_ary