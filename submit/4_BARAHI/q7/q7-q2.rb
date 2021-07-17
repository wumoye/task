
hello="hello world"


class << hello
    def print
        p "data: " + self
    end 
end
hello.print
