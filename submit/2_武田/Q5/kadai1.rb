class Product
    attr_accessor :code #読み込み書き込み
    attr_accessor :name #読み込み書き込み
    attr_accessor :price #読み込み書き込み

    def initialize(code, name, price)
        @code = code
        @name = name
        @price = price
    end
    def debug()
        puts "code: #{self.code}"
        puts "name: #{self.name}"
        puts "price: #{self.price}"
    end
    def getcode
        @code
    end
    def getname
        @name
    end
    def getprice
        @price
    end

=begin
    def debug()
        puts "code : #{self.code}"
        puts "name : #{self.name}"
        puts "price : #{self.price}"
    end
=end
end

class Phone < Product
    attr_accessor :size
    attr_accessor :num
    def initialize(code, name, price, size, num)
        super(code, name, price)
        @size = size
        @number = num
    end

    def getnum
        @number
    end

    def debug
        puts "code: #{@code}"
        puts "name: #{@name}"
        puts "price: #{@price}"
        puts "size: #{@size}"
        puts "num: #{@number}"
    end
end

class Camera < Product
    attr_accessor :pixel
    def initialize(code, name, price, pixel)
        super(code, name, price)
        @pixel = pixel
    end

    def getpixel
        @pixel
    end

    def debug
        puts "code: #{@code}"
        puts "name: #{@name}"
        puts "price: #{@price}"
        puts "pixel: #{@pixel}"
    end
end

test = Product.new(10, "test",100)
#test.debug

#phone = Phone.new(code,name,price,size,num)
phone1 = Phone.new(111,"name",333,444,555)
#puts phone1.getnum
#phone1.debug

camera1 = Camera.new(111,"name",333,444)
#puts phone1.getnum
camera1.debug