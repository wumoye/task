#1
class Product

    @@productCount = 0

    attr_accessor : code, :name, :price
  
    def initialize(code ,name, price)
      @code = code
      @Name = name
      @Price = price

      @@productCount = @@productCount + 1
    end
  
    def self.get_product_count
        puts "商品数: #{@@product_count}台"
    end

    def info
        print "商品コードは#{@code} 価格は#{price}円"
    end   
  
end
  
class Phone < Product
  
    @@phone_count = 0
  
    attr_accessor :phone_num
  
    def initialize(code, name = "Product", price, phone_num)
      super(code,name,price)
      @phone_num = phone_num
  
      @@phone_count += 1
    end
  
    def self.get_phone_count
      puts "携帯電話: #{@@phone_count}台"
    end
  
    def info
      super
      print "電話番号は#{@phone_num}"
    end
  
end

class Digitalcamera < Product

    @@camera_count = 0
  
    attr_accessor :pixel
  
    def initialize(code, name = "Product", price, pixel)
      super(code,name,price)
      @pixel = pixel
  
      @@camera_count += 1
    end
  
    def self.get_camera_count
      puts "デジタルカメラ: #{@@camera_count}台"
    end
  
    def info
      super
      puts "画素数は#{@pixel}"
    end
  
end

class Audio < Product

    @@audio_count = 0
    @@audio_num = 0
  
    attr_accessor :capacity
  
    def initialize(code, name = "Product", price, capacity)
        super(code,name,price)
        @capacity = capacity
    
        @@audio_count += 1
        @@audio_sum += price
    end
  
    def self.get_audio_count
      puts "携帯オーディオ: #{@@audio_count}台"
    end

    def self.get_audio_num
        puts "携帯オーディオ#{@@audio_count}台の合計金額は#{@@audio_num}"
    end
    
    def info
        super
        puts "容量は#{@capacity}"
    end
    
end
  
#2
  
puts "携帯電話："
  (1..3).each do |i|
    phone_num = rand(1000..9999)
    phone = Phone.new(set_code, "携帯#{i}", set_price, phone_num)
    print "#{i})"
    phone.info)
end
  
puts "デジカメ："
  (1..5).each do |i|
    camera = Digitalcamera.new(set_code, "カメラ#{i}", set_price, rand(10000..99999))
    print "#{i})"
    camera.info
end   
  
puts "オーディオ:"
  (1..20).each do |i|
    audio = Audio.new(set_code, "オーディオ#{i}", set_price, rand(100000..999999))
    print "#{i})"
    audio.info
end
  
#3
  
Phone.get_phone_count
Digitalcamera.get_camera_count
Audio.get_audio_count
Product.get_product_count
  
#4
  
Audio.get_audio_num
  
#5
puts "iPhone"
(1..4).each do |i|
  version = rand(1..10)
  phone_num = rand(10000000000..99999999999)
  iphone = IPhone.new(set_code,"iPhone#{version}",set_price,phone_num,version)
  print "#{i})"
  iphone.info
end
IPhone.get_iphone_count