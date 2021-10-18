# Q11
# 11-1
# 1)
5.times do |i|
    (i+1).times do
        print "*"
    end
    puts ""
end


# 2)
10.downto(1) {|n| 
    n.times do
        print "*"
    end
    puts 
}


# 3)
arr = [1, 2, 3, 4, 5]

4.downto(2){ |i|
    p arr.reverse[1..i]
}


# 4)
arr = (-15..-10).to_a
arr3 = []
arr.each{|i|
    if i % 3 == 0
        arr3.push(i)
    end
}
p arr3 


# 11-2
# 1)
# o2

# 2)
# [0, 1, 1, 2, 3, 5, 8, 13, 21]


# 11-3
# ..は終端を含む範囲。...は終端を含まない範囲。\n

# 11-4
# reverseは新しい逆順の配列を返す。reverse!は元の配列自身を並び替えて返す。

# 11-5
class Tool
    def use
      puts "color:#{@color} tool:#{self.class.to_s}"
    end
  
    def initialize(color)
      @color = color
    end
  end
  
  class Hammer < Tool
    def use
      super
      puts 'ハンマーを使う'
    end
  end
  
  Hammer.new("red").use 