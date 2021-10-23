1.1
5.times do |i|
    (i+1).times do
        print "*"
    end
    puts ""
end
print("")
puts 
1.2
10.downto(1) {|n| 
    n.times do
        print "*"
    end
    puts 
}

1.3
ary = [1, 2, 3, 4, 5]

4.downto(2){ |i|
    p ary.reverse[1..i]
}

1.4
ary = (-15..-10).to_a
ary_3 = []
ary.each{|i|
    if i % 3 == 0
        ary_3.push(i)
    end
}
p ary_3
