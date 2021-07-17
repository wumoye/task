module Hoge
    def foo
      "Foo" + bar
    end
    module_function :foo
    public :foo
    private
    def bar
      "Bar"
    end
end
  
class Test
    include Hoge
    #extend Hoge
    
end
puts Test.foo
