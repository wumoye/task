class Product
    attr_reader :code #読み
    attr_reader :name #読み
    attr_reader :price #読み

    @@count = 0
    def initialize(code, name, price)
        @code = code
        @name = name
        @price = price
        @@count = @@count + 1
    end
end

class Phone < Product
    attr_reader :size
    attr_reader :num
    @@p_count = 0
    attr_reader :p_count
    def initialize(code, name, price, size, num)
        super(code, name, price)
        @size = size
        @num = num
        @@p_count = @@p_count + 1
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 電話番号は#{num}"
    end

    def count()
       puts "携帯:#{@@p_count}"
    end

end

class Camera < Product
    attr_reader :pixel
    def initialize(code, name, price, pixel)
        super(code, name, price)
        @pixel = pixel
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 画素数は#{pixel}万画素"
    end
end

class Audio < Product
    attr_reader :capa

    def initialize(code, name, price, capa)
        super(code, name, price)
        @capa = capa
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 容量は#{capa}GB"
    end
end
puts "携帯電話:"
(1..3).each do |i|
    code = rand(100000)
    price = rand(50000..100000)
    size = rand(3..7)
    num = rand(1000000000..9999999999)
    
    phone = Phone.new(code, "携帯電話", price, size, num)
    print i , ")"
    phone.print
    phone.p_count
end



puts "デジカメ:"
(1..5).each do |i|
    code = rand(100000)
    price = rand(50000..100000)
    pixel = rand(100..3000)
    
    camera = Camera.new(code, "デジカメ", price, pixel)
    print i , ")"
    camera.print
end


puts "携帯オーディオ:"
(1..20).each do |i|
    code = rand(100000)
    #require 'securerandom'
    #code = SecureRandom.random_number(n=999999)
    price = rand(50000..100000)
    capa = 2 ** rand(1..6)
    
    audio = Audio.new(code, "携帯オーディオ", price, capa)
    print i , ")"
    audio.print
end

