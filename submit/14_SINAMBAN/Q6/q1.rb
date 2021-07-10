a = (1..100).to_a
c = []
a.each do |i| 
    c << i if i % 3 == 0
end

p c