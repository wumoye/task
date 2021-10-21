class InvalidError < StandardError
    def initialize(message)
        super(message)
    end
end


class Greeting
    def identity(name)
        begin
            if name == ""
                raise InvalidError.new "No name given"
            end
            p "hello #{name}"
        rescue Exception => e
            p e.message
        end
    end 
end


greet = Greeting.new
greet.identity('carl')