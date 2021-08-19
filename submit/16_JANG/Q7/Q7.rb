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

p Test.foo

#2
hello = "hello world"

def hello.print
  p 'date:' + self
end

hello.print

#3
class Array
  def with_order_print
    self.each_with_index do |v, i|
      puts "#{i+1}))#{v}"
    end
  end
end

sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print