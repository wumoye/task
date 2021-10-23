
1.upto(5) {|i| 
  i.downto(1) {|j|  
    print "*", ""   
  }
  print "\n"
}
print "---------------------------\n"
10.downto(1) {|i| 
  i.downto(1) {|j|  
    print "*", ""   
  }
  print "\n"
}
print "---------------------------\n"
ary = [1, 2, 3, 4, 5]
ary.delete(5)
ary.sort!.reverse!
p ary
3.downto(2) {|i|
  ary.delete_at(i)
  print ary,"\n"
}
print "---------------------------\n"
ary = (-15..-10).to_a
newary = []
for i in 0..5
  if ary[i] % 3 == 0 then
    newary.push(ary[i])
    
  end
end
p newary

print "---------------------------\n"
print "2-(1) o2\n"
print "---------------------------\n"
print "2-(2) 分かりません\n"
print "---------------------------\n"
print "3 ..は終端を含む範囲。...は終端を含まない範囲。\n"
print "---------------------------\n"
print "4 reverseは新しい配列を返す。reverse!は破壊的メソッドなので元の配列自身を並び替えて返す。\n"
print "---------------------------\n"

class Tool
  def use
    puts "color:#{@color} tool:#{self.class.to_s}"
  end
 
  def initialize(color)
    @color = color
  end
end
Hammer.new("red").use
