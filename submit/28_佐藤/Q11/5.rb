class Hammer
    def use
        puts "color:#{@color} tool:#{self.class.to_s}", "\n", "ハンマーを使う"
    end

    def initialize(color)
        @color = color
    end
end

Hammer.new("red").use
