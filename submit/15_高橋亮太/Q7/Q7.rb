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
    include Hoge
    def foo()
        foo
    end
end

puts "Q7-1"
test = Test.new
puts Test.foo

#Q7-2
puts "\n\nQ7-2"


#Q7-3
puts "\n\nQ7-3"

