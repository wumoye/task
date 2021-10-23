ary = (-15..-10).to_a

divisibleByThree = []
ary.each do |v|
    divisibleByThree.push(v) if v % 3 == 0
end
p divisibleByThree