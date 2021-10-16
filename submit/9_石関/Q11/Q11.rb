1.upto(5) {|i|
    i.times do
        print '*'
    end
    print "\n"
}

print "\n"

10.downto(1) do |i|
    i.times do
        print '*'
    end
    print "\n"
end


ary = [1,2,3,4,5]

4.downto(2) do |i|
    p ary.reverse[1..i]
end


ary.reverse!
p ary[1..-1]
p ary[1...-1]
p ary[1...-2]

ary = (-15..-10).to_a

divisibleByThree = []
ary.each do |v|
    divisibleByThree.push(v) if v % 3 == 0
end
p divisibleByThree

p ary.select do |i|
    i % 3 == 0
end

o1 = Object.new
o2 = Object.new

if o1.equal?(o2)
    puts("o1")
else
    puts("false")
end

#3.範囲演算子の「...」と「..」の意味と違いを日本語で説明せよ
#...は最後の値を含まない（未満）..最後の値を含む（以下）
(1..5).each do |x|
    puts x
end
#4.reverseメソッドとreverse!メソッドの違いを説明せよ
# !は破壊的にレシーバの配列を逆順にする。!がない方はレシーバは変更されない

