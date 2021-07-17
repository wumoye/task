module Hoge
    def foo
      "Foo" + bar
    end
  
    private
    def bar
      "Bar"
    end
end

class Aaa
    include Hoge
end

Test = Aaa.new
puts Test.foo

#   ruby Q7_1.rb