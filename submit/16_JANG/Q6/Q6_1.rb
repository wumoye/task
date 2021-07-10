arr = (1..100).to_a
c = []

arr.each do |i|
  if i % 3 === 0
    c.append i
  end
end

p c



