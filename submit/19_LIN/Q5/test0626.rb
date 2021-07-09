class Product
  @@count = 0

  def initialize(name, code, price)
    @name = name
    @code = code
    @price = price
    @@count += 1
  end

  def debug
    print "コードは#{@code}で、値段#{@price}円で、"
  end

  def self.count
    @@count
  end
end

class MobilePhone < Product
  @@mobile_phone_count = 0
  alias mobile_phone_debug debug

  def initialize(name, code, price, size)
    super(name, code, price)
    @size = size
    @@mobile_phone_count += 1
  end

  def debug
    super
    print "液晶sizeは#{@size}です\n"
  end

  def self.mobile_count
    @@mobile_phone_count
  end
end

class DigitalCamera < Product
  @@digital_camera_count = 0
  alias digital_camera_debug debug

  def initialize(name, code, price, size)
    super(name, code, price)
    @size = size
    @@digital_camera_count += 1
  end

  def debug
    super
    print "pixelは#{@size}です\n"
  end

  def self.digital_camera_count
    @@digital_camera_count
  end
end

class Audio < Product
  @@audio_count = 0
  @@audio_total_price = 0

  def initialize(name, code, price, size)
    super(name, code, price)
    @size = size
    @@audio_count += 1
    @@audio_total_price += price
  end

  def debug
    super
    print "capacityは#{@size}です\n"
  end

  def self.audio_count
    @@audio_count
  end

  def self.total_price
    @@audio_total_price
  end
end

class Iphone < MobilePhone
  alias iphone_debug mobile_phone_debug

  def initialize(name, code, price, size, color, face_id)
    super(name, code, price, size)
    @size = size
    @color = color
    @face_id = face_id
  end

  def debug
    super
    print "capacityは#{@size}、カラーは#{@color}で、faceidは#{@face_id}です\n"
  end
end

def rand_gen
  rand(10_000..99_999)
end

mobile_names = %w[ドコモ エーユー ソフトバンク]

puts 'mobile:'
(1..3).each do |num|
  mobil = MobilePhone.new(mobile_names[num - 1], rand_gen, rand_gen, rand(10..50))
  print "#{num})"
  mobil.debug
end

puts 'digital camera:'
camera_names = %w[Canon sony Olympus Olympus nikon]
(1..5).each do |num|
  camera = DigitalCamera.new(camera_names[num - 1], rand_gen, rand_gen, rand(10..50))
  print "#{num}"
  camera.debug
end

audio_names = %w[Canon sony Bowers&Wilkins Olympus ATC]