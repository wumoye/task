a = Array.new(100) { |index| (index + 1) }
c = []
a.each do |i|
    c << i if i % 3 == 0
end
p c