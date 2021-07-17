# Q1

class Product
    
    # instance variables
    @@count = 0

    def initialize(code, name = "Product", price)
        @code = code
        @name = name
        @price = price
        @@count = @@count + 1
    end

    def self.count
        @@count
    end

    attr_reader :code
    attr_reader :name
    attr_reader :price

    def common_desc
        "商品コードは" + code.to_s + " 価格は" + price.to_s + "円 "
    end

    private 

    attr_writer :code
    attr_writer :name
    attr_writer :price
end

class CellPhone < Product

    # instance variables
    @@cellphone_count = 0

    def initialize(code, name, price, screen_size, phone_number)
        super(code, name, price)
        @screen_size = screen_size
        @phone_number = phone_number
        @@cellphone_count = @@cellphone_count + 1
    end

    def self.cellphone_count
        @@cellphone_count
    end

    def desc
        common_desc + "電話番号は080-" + phone_number.to_s[0..3] + "-" + phone_number.to_s[4..7]
    end

    attr_reader :phone_number

    private

    attr_accessor :screen_size
end

class DigitalCamera < Product
    
    # instance variables
    @@digital_camera_count = 0
    
    def initialize(code, name, price, pixels)
        super(code, name, price)
        @pixels = pixels
        @@digital_camera_count = @@digital_camera_count + 1
    end

    def self.digital_camera_count
        @@digital_camera_count
    end

    def desc
        common_desc + "画素数は" + pixels.to_s
    end

    attr_reader :pixels

    private

    attr_writer :pixels

end

class AudioPlayer < Product

    # instance variables
    @@audio_player_count = 0
    @@total_sales = 0

    def initialize(code, name, price, data_size)
        super(code, name, price)
        @data_size = data_size
        @@audio_player_count = @@audio_player_count + 1
        @@total_sales = @@total_sales + price
    end

    def self.total_sales
        @@total_sales
    end

    def self.audio_player_count
        @@audio_player_count
    end

    def desc
        common_desc + "容量は" + data_size.to_s
    end

    attr_reader :data_size

    private

    attr_writer :data_size

end

# Q2

def generate_code
    rand(1000..9999)
end

def generate_price
    rand(10000..50000)
end

p "携帯電話："
cellphones = Array.new
(1..3).each do |i|
    screen_size = rand(13..19)
    phone_number = rand(10000000..99999999)
    cellphones.append(CellPhone.new(generate_code, "携帯", generate_price, screen_size, phone_number))
    number = cellphones[i - 1].phone_number.to_s
    p i.to_s + ")" + cellphones[i - 1].desc
end

p "デジカメ："
(1..5).each do |i|
    dc = DigitalCamera.new(generate_code, "デジカメ", generate_price, rand(1..200))
    p i.to_s + ")" + dc.desc
end

p "携帯オーディオ："
(1..20).each do |i|
    ap = AudioPlayer.new(generate_code, "携帯オーディオ：", generate_price, rand(1000000..1000000000))
    p i.to_s + ")" + ap.desc
end

# Q3

p "携帯電話：" + CellPhone::cellphone_count.to_s + "台"
p "デジカメ：" + DigitalCamera::digital_camera_count.to_s + "台"
p "携帯オーディオ：" + AudioPlayer::audio_player_count.to_s + "台"
p "商品数：" + Product::count.to_s + "台"

# Q4

p "携帯オーディオ20台の合計金額は" + AudioPlayer::total_sales.to_s

# Q5

class IPhone < CellPhone
    def initialize(code, name, price, screen_size, phone_number, model_code, provider)
        super(code, name, price, screen_size, phone_number)
        @model_code = model_code
        @provider = provider
    end

    attr_reader :model_code
    attr_reader :provider

    def desc
        common_desc + "モデルは" + name + model_code + " プロバイダーは" + provider
    end

    private

    attr_writer :model_code
    attr_writer :provider
end

iphone = IPhone.new(generate_code, "iPhone", generate_price, rand(1..12), rand(10000000..99999999), "12", "ドコモ")
p iphone.desc