class Tool
  def use
    puts "color:#{@color} tool:#{self.class.to_s}"
  end
 
  def initialize(color)
    @color = color
  end
end
Hammer.new("red").use