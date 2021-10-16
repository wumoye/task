class InvalidError < StandardError
    def message
        "no name error"
    end
end

def print_hello(name)
    if name == ""
        raise InvalidError
    else
        puts "hello #{name}"
    end
end

my_name = ""
print_hello(my_name)





