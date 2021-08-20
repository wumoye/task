#1
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
    extend Hoge
end
  
puts Test.

#2
hello = "hello world"

def hello.print
  p 'data' + self
end

hello.print

#3
class Array
    def with_order_print
      each_with_index do |value, index|
        puts "#{index+1}))#{value}"
      end
    end
end
  
sample_array = ["stay", "foolish", "stay", "hungry"]
sample_array.with_order_print