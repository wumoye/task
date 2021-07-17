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
    include Hoge
    def foo
        puts "FooBar"
    end
end
test = Test.new
test.foo

#
class CallHello
    def hello1
        puts "hello world"
    end
end

obj1 = CallHello.new

class << obj1
  def hello2
    puts 'data : hello world'
  end
end
obj1.hello2

#


class Array
  def with_order_print
    num = 0
    length = self.count - 1
    for num in 0..length
      

      print num,")",self[num],"\n"
      num += 1
    end
    
  end
end
sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print

