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
    def self.getcount()
        puts "商品:#{@@count}台"
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

    def self.getcount()
       puts "携帯:#{@@p_count}台"
    end

end

class Camera < Product
    @@c_count = 0
    attr_reader :pixel
    def initialize(code, name, price, pixel)
        super(code, name, price)
        @pixel = pixel
        @@c_count = @@c_count + 1 
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 画素数は#{pixel}万画素"
    end
    def self.getcount()
        puts "デジカメ:#{@@c_count}台"
    end
end

class Audio < Product
    attr_reader :capa
    @@a_count = 0
    @@audio_total = 0
    def initialize(code, name, price, capa)
        super(code, name, price)
        @capa = capa
        @@a_count = @@a_count + 1
        @@audio_total = @@audio_total + price
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 容量は#{capa}GB"
    end
    def self.getcount()
        puts "携帯オーディオ合計:#{@@a_count}台"
    end
    
    def self.gettotal()
        puts "総額:#{@@audio_total}円"
    end
end

#####################

puts "携帯電話:"
phones = Array.new
(1..3).each do |i|
    code = rand(100000)
    price = rand(50000..100000)
    size = rand(3..7)
    num = rand(1000000000..9999999999)
    
    phone = Phone.new(code, "携帯電話", price, size, num)
    print i , ")"
    phones.push(phone)
    phone.print
end

puts "デジカメ:"
cameras = Array.new
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
    require 'securerandom'
    id = SecureRandom.random_number(10000)
    price = rand(50000..100000)
    capa = 2 ** rand(1..6)
    
    audio = Audio.new(code, "携帯オーディオ", price, capa)
    print i , ")"
    audio.print
end

#####################


Phone.getcount
Camera.getcount
Audio.getcount
Product.getcount


####時間外での作業####
Audio.gettotal()


####################

class Iphone < Phone
    attr_reader :id
    @@i_count = 0
    @@ihpone_total = 0
    def initialize(code, name, price, size, num, id)
        super(code, name, price, size, num)
        @id = id
        @@i_count = @@i_count + 1
        @@ihpone_total = @@ihpone_total + price
    end

    def print
        puts "商品コードは#{sprintf("%06d", code)} 価格は#{price}円 AppleIDは#{id}@icloud.com"
    end
    def self.getcount()
        puts "iphone合計:#{@@i_count}台"
    end
    
    def self.gettotal()
        puts "iphone総額:#{@@ihpone_total}円"
    end
end

puts "iphone:"
(1..3).each do |i|
    code = rand(100000)
    price = rand(50000..100000)
    size = rand(3..7)
    num = rand(1000000000..9999999999)
    require 'securerandom'
    id = SecureRandom.alphanumeric(10)
    iphone = Iphone.new(code, "アイフォン", price, size, num, id)
    print i , ")"
    iphone.print
end

Iphone.getcount
Iphone.gettotal