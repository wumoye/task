#1-1
(1..5).each do |x|
    i.times do
        ptint '*'
        break if x==y
    end
    print "\n"
end

#1-2
10.downto(1) {|n| 
    n.times do
        print "*"
    end
    puts 
}

#1-3
ary = [1, 2, 3, 4, 5]

4.downto(2) do |i|
    p ary.reverse[1..i]
end

#1-4
ary = (-15..-10).to_a
ary_3 = []
ary each do |i|
    if i % 3 == 0
        ary_3.push(i)
    end
end

p ary_3

#2-1
o2

#2-2
[0, 1, 1, 2, 3, 5, 8, 13, 21]

#3
1...5 => 1,2,3,4
1..5 => 1,2,3,4,5

#4-1
元の配列は変えずに配列を逆に並べて返す

#4-2
元の配列を逆順に並び替える

#5
class Tool
    def use
      puts "color:#{@color} tool:#{self.class.to_s}"
    end
  
    def initialize(color)
      @color = color
    end

class Hammer < Tool
    def initialize(color)
        super(color)
    end
    
    def use
        puts "color:#{@color} tool:#{self.class.to_s}"
        puts "ハンマーを使う"
    end

end
Hammer.new("red").use