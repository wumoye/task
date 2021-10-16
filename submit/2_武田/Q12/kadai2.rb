class InvalidError < StandardError
    def message
        "No name"
    end
end



def hello(name="")
    begin
        raise InvalidError if name == ""
        puts "Hello! #{name}"
    rescue=>e
        puts "InvalidError : " + e.message
    end
end




hello("test")
hello()