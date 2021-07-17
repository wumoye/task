#Q7-1
module Hoge
    def foo
        "Foo" + bar
    end

    private
    def bar
        "Bar"
    end
end

class Test
    class << self
      include Hoge
    end
end

puts "Q7-1"
test = Test.new
puts Test.foo

#Q7-2
puts "\n\nQ7-2"

hello = "hello world"
def hello.print
    puts "data : " + self
end

hello.print


#Q7-3
puts "\n\nQ7-3"
class Array
    def with_order_print()
        self.each_with_index do |v,i|
            puts "#{i+1})#{v}"
        end
    end
end

sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print
