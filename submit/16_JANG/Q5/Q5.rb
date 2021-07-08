class Product
  
  attr_reader :code, :name, :price

  private
  attr_writer :code, :name, :price

  @@productCount = 0

  def initialize(code ,name, price)
    @productCode = code
    @productName = name
    @productPrice = price
    @@productCount = @@productCount + 1
  end

  def self.productCount
    @@productCount
  end

  def output
    "the product code is #{@productCode.to_i} and Product name is #{@productName.to_s} the Product price is #{@productPrice.to_i}"
  end

end

class Cellphone < Product

  attr_reader :num

  @@phoneCount = 0

  def initialize(num, code, name, price)
    super(code, name, price)
    @displaySize = 375
    @phoneNumber = num
    @@phoneCount = @@phoneCount + 1
  end

  def self.phoneCount
    @@phoneCount
  end

  def phoneOutPut
    output + " and phone number is a #{@phoneNumber.to_i}"
  end

end

class DigitalCamera < Product

  attr_reader :num

  @@cameraCount = 0

  def initialize(num, code, name, price)
    super(code, name, price)
    @pixel = num
    @@cameraCount = @@cameraCount + 1
  end

  def self.cameraCount
    @@cameraCount
  end

  def cameraOutPut
    output + " and camera pixel is a #{@pixel.to_i}"
  end

end

class AudioPlayer < Product

  attr_reader :num

  @@audioCount = 0
  @@totalAmount = 0

  def initialize(num, code, name, price)
    super(code, name, price)
    @capacity = num
    @@audioCount = @@audioCount + 1
    @@totalAmount = @@totalAmount + price
  end

  def self.audioCount
    @@audioCount
  end

  def self.totalAmount
    @@totalAmount
  end

  def audioOutPut
    output + " and audio player capacity is a #{@capacity.to_i}"
  end

end

class Iphone < Cellphone

  attr_reader :model

  def initialize(code, name, price, num, model)
    super(code, name, price, num)
    @iphoneModel = model
  end

  def iphoneOutPut
    output + " and the iphone model is #{@iphoneModel.to_s}" 
  end

end

#--------------------------------------------------------------------------------------------------

puts "cellphone"
(1..3).each do |i|
  cellphone = Cellphone.new(rand(1000..9999), rand(10...99), "cellphone", rand(100000..150000))
  puts cellphone.phoneOutPut
end

puts "digcame"
(1..5).each do |i|
  digcame = DigitalCamera.new(rand(1000..9999),  rand(10...99), "camera", rand(100000..150000))
  puts digcame.cameraOutPut
end

puts "audio"
(1..20).each do |i|
  audio = AudioPlayer.new(rand(1000..9999), rand(10...99), "audio player", rand(10000..15000))
  puts audio.audioOutPut
end

#--------------------------------------------------------------------------------------------------

puts "cellphone: " + Cellphone::phoneCount.to_s
puts "digital camera: " + DigitalCamera::cameraCount.to_s
puts "audio player: " + AudioPlayer::audioCount.to_s
puts "total Product: " + Product::productCount.to_s

#--------------------------------------------------------------------------------------------------

puts "total amount for audio player: " + AudioPlayer::totalAmount.to_s

#--------------------------------------------------------------------------------------------------

iphone = Iphone.new(rand(1000..9999), rand(10...99), "iphone", rand(100000..150000), "12pro")
puts iphone.iphoneOutPut