module Hoge
      def Hoge.foo
        "Foo" + bar
      end

      def Hoge.bar
        "bar"
      end
end



class Test

    def self.foo
        Hoge.foo
    end


end


p Test.foo
