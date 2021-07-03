# frozen_string_literal: true

class Goods
  attr_reader :goods_code, :goods_name, :goods_price

  def initialize(name, price)
    make_goods_code
    @goods_name = name
    @goods_price = price
  end

  def checked(check, list)
    return false if list.find { |i| i == check }.equal? nil

    true
  end

  def plus_count
    @@total_count_of_all += 1
  end

  def self.total_count_of_all
    @@total_count_of_all
  end

  def self.goods_code_len(len = nil)
    @@goods_code_len = len
  end

  private

  @@goods_code_len = 8
  @@total_count_of_all = 0
  @@code_list = []

  def make_goods_code
    @goods_code = make_code(@@goods_code_len)
  end

  def make_code(len)
    if 10 ** len - 1 == @@code_list.count
      puts '【注意】：使える商品コードがゼロになりました!'
      return
    end
    rand_code = Random.new

    @code = format("%0#{len}d", rand_code.rand(10 ** len - 1))

    @code = format("%0#{len}d", rand(10 ** len - 1)) while checked(@code, @@code_list)
    @@code_list.push(@code)
    @code
  end

end

class Phone < Goods

  attr_accessor :number

  def plus_count
    super
    @@total_count_of_phone += 1
  end

  def self.total_count_of_phone
    @@total_count_of_phone
  end

  private

  @@total_count_of_phone = 0

  @size
  @number

end

class Iphone < Phone

  attr_accessor :model, :color, :size, :capacity

  def call(number)
    puts "電話番号#{number}に掛けています。"
  end

  def send_message(number, content)
    puts "#{number}に以下の内容を送りました。\n【#{content}】"
  end

  def open_app(app_name)
    puts "ソフト：#{app_name}が動いています。"
  end

  private

end

class DigitalCamera < Goods
  @@total_count_of_camera = 0
  attr_accessor :pixels

  def plus_count
    super
    @@total_count_of_camera += 1
  end

  def self.total_count_of_camera
    @@total_count_of_camera
  end

  private

  @pixels = 0

end

class Audio < Goods
  @@total_count_of_audio = 0
  @@total_price_of_audio = 0
  attr_accessor :capacity

  def plus_count
    super
    @@total_count_of_audio += 1
  end

  def self.total_count_of_audio
    @@total_count_of_audio
  end

  def plus_price
    @@total_price_of_audio += @goods_price
  end

  def self.total_price_of_audio
    @@total_price_of_audio
  end

  private

  @capacity = 0

end

def make_phone(count)
  puts '携帯電話：'
  phone_number_list = []
  lists = %w[010 020 030 040 080 090]

  count.times do |i|
    price = Random.new.rand(10_000..2_000_000)
    my_phone = Phone.new('iphone', price)
    break if my_phone.goods_code.nil?

    my_phone.plus_count
    phone_number = lists.at(Random.new.rand(lists.count)) + Random.new.rand(0..99_999_999).to_s
    phone_number = lists.at(Random.new.rand(lists.count)) + Random.new.rand(0..99_999_999).to_s while my_phone.checked(phone_number, phone_number_list)

    my_phone.number = phone_number

    puts "#{i + 1})商品コードは#{my_phone.goods_code}  価格は#{my_phone.goods_price}円　電話番号は#{my_phone.number} "
  end
end

def make_camera(count)
  pixels_list = [800, 1000, 1200, 1600, 2000]
  puts 'デジカメ：'
  count.times do |i|
    price = Random.new.rand(50_000..200_000)
    my_camera = DigitalCamera.new('SONY', price)
    break if my_camera.goods_code.nil?

    my_camera.plus_count
    my_camera.pixels = pixels_list.at(Random.new.rand(pixels_list.count))

    puts "#{i + 1})商品コードは#{my_camera.goods_code}  価格は#{my_camera.goods_price}円　画素数は#{my_camera.pixels}万  "
  end
end

def make_audio(count)

  capacity_list = [4, 8, 16, 32, 64, 128]
  puts '携帯デジカメ：'
  count.times do |i|
    price = Random.new.rand(5_000..60_000)
    my_audio = Audio.new('', price)
    break if my_audio.goods_code.nil?

    my_audio.plus_count
    my_audio.plus_price
    my_audio.capacity = capacity_list.at(Random.new.rand(capacity_list.count))

    puts "#{i + 1})商品コードは#{my_audio.goods_code}  価格は#{my_audio.goods_price}円　容量は#{my_audio.capacity}G "

  end

end

# start
Goods.goods_code_len(8)

puts "\nQ2.---------------------------------------"

make_phone(3)
make_camera(5)
make_audio(20)

puts "\nQ3.---------------------------------------"

@phone_count = Phone.total_count_of_phone
@camera_count = DigitalCamera.total_count_of_camera
@audio_count = Audio.total_count_of_audio
@total_count = Goods.total_count_of_all

puts "携帯電話：#{@phone_count}台\nデジカメ：#{@camera_count}台\n携帯オーディオ：#{@audio_count}台\n商品数：#{@total_count}台"

puts "\nQ4.---------------------------------------"

@audio_total_price = Audio.total_price_of_audio
puts "携帯オーディオ#{@audio_count}台の合計金額は#{@audio_total_price}"

puts "\nQ5.---------------------------------------"

my_iphone = Iphone.new('iphone 12', 150_000)
my_iphone.color = '赤色'
my_iphone.size = 6.8
my_iphone.model = 'Pro+'

puts "商品名：#{my_iphone.goods_name}
商品コード：#{my_iphone.goods_code}
商品モデル：#{my_iphone.model}
スクリーンサイズ：#{my_iphone.size}
色：#{my_iphone.color}"

my_iphone.send_message('09032299999', '週末で残業してください。')
my_iphone.open_app('TikTok')
