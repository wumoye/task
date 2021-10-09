class Tool
    def use
      puts "color:#{@color} tool:#{self.class.to_s}"
    end
   
    def initialize(color)
      @color = color
    end
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