#Q5-1
# 商品
class Product

  @@product_count = 0

  attr_accessor :code, :name, :price

  def initialize(code, name = "Product", price)
    @code = code
    @name = name
    @price = price

    @@product_count += 1
  end

  def self.get_product_count
    puts "商品数: #{@@product_count}台"
  end

  def info
    print "商品コードは#{@code}  価格は#{price}  "
  end

end


# 携帯電話
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
    print "電話番号は#{@phone_num}  "
  end

end


# デジタルカメラ
class Digital_camera < Product

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

# 携帯オーディオ
class Mobile_audio < Product

  @@audio_count = 0
  @@audio_sum = 0

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

  #Q5-4
  def self.get_audio_sum
    puts "携帯オーディオ#{@@audio_count}台の合計金額は#{@@audio_sum}"
  end

  def info
    super
    puts "容量は#{@capacity}"
  end

end

#Q5-5
# iphone
class IPhone < Phone

  @@iphone_count = 0

  attr_accessor :version

  def initialize(code, name = "Product", price, phone_num, version)
    super(code,name,price,phone_num)
    @version = version

    @@iphone_count += 1
  end

  def self.get_iphone_count
    puts "iPhone: #{@@iphone_count}台"
  end

  def info
    super
    puts "versionは#{@version}"
  end

end


def set_code
  rand(1000..9999)
end

def set_price
  rand(10..99) * 1000
end


#Q5-2
puts "携帯電話："
(1..3).each do |i|
  phone_num = rand(10000000000..99999999999)
  phone = Phone.new(set_code, "携帯#{i}", set_price, phone_num)
  print "#{i})"
  phone.info
  puts "\n"
end
puts "\n"

puts "デジカメ："
(1..5).each do |i|
  camera = Digital_camera.new(set_code, "カメラ#{i}", set_price, rand(1000..2000))
  print "#{i})"
  camera.info
end
puts "\n"

puts "携帯オーディオ："
(1..20).each do |i|
  audio = Mobile_audio.new(set_code, "オーディオ#{i}", set_price, rand(60..500))
  print "#{i})"
  audio.info
end
puts "\n"

#Q5-3
Phone.get_phone_count
Digital_camera.get_camera_count
Mobile_audio.get_audio_count
Product.get_product_count
puts "\n"

#Q5-4
Mobile_audio.get_audio_sum
puts "\n"

#Q5-5
puts "iPhone"
(1..4).each do |i|
  version = rand(1..10)
  phone_num = rand(10000000000..99999999999)
  iphone = IPhone.new(set_code,"iPhone#{version}",set_price,phone_num,version)
  print "#{i})"
  iphone.info
end
IPhone.get_iphone_count
