=begin
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
    # instance variables @@がクラス変数　@インスタンス変数
    @@cellphone_count = 0
    def initialize(code, name, price, screen_size, phone_number)
        super(code, name, price)
        @screen_size = screen_size
        @phone_number = phone_number
        @@cellphone_count = @@cellphone_count + 1
    end
　　　　# クラスメソッドはクラス名.メソッド名で宣言。
    def self.cellphone_count　# CellPhone.cellphone_count
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
phones = Array.new
(1..3).each do |i|
    screen_size = rand(13..19)
    phone_number = rand(10000000..99999999)
	cp = CellPhone.new(generate_code, "携帯", generate_price, screen_size, phone_number)
    phones.push(cp)
    number = cp.phone_number.to_s
    p i.to_s + ")" + cp.desc
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
=end

#配列生成

#array_sample = [1,2,3] # 
#array_sample = Array.new(5,0) # [0, 0, 0, 0, 0]5つ分で初期値は0
#array_sample = %w(hello wolrld) #["hello","world"]
#array_sample = %i(stay foolish stay hungry) #[:stay, :foolish, :stay, :hungry]

#配列の値の取得
array_sample = [1,2,3,4,5]
p array_sample[0]
p array_sample[1]
p array_sample[2]
p array_sample[3]
p array_sample[4]
p array_sample[5] # nil 
p array_sample[-1] # 5
p array_sample[-2] # 4
p array_sample[2..3] # [3,4]
p array_sample.first # 1
p array_sample.last  # 5

#　配列の値を変更
array_sample1 = [1,2,3,4,5,6,7,8,9,10]
array_sample1[2] = 100
array_sample1[3] = 'A'
p array_sample1

# 配列の値を設定
array_sample2 = [1,2,3,4,5,6,7,8,9,10]
array_sample2[6,0] = [100,200]
p array_sample2

# pop / push #キュー　　FIFO (first in first out)：先入れ先だし
array_sample3 = [1,2,3,4,5,6,7,8,9,10]
array_sample3.push(99)
array_sample3.push(100)
p array_sample3
array_sample3.pop
p array_sample3
array_sample3.pop
p array_sample3
array_sample3.pop
p array_sample3

#並び替え
array_sample4 = [5,6,7,2,9,1,2]
p array_sample4.sort # レシーバー自体は変更しない
p array_sample4.sort! #イクスクラメーションマークがついたメソッドは破壊的メソッドとなりレシーバー自体を更新
p array_sample4

# value_at 値の取得
array_sample5 = [1,2,3,4,5]
p array_sample5.values_at(1,3,-1) #破壊的メソッドはない
p array_sample5

# compact nilを削除
array_sample6 = [1,nil,3,nil,5]
array_sample6.compact!
p array_sample6

# delete 指定した要素を削除
array_sample7 = [1,2,3,4,5,1,2,3,4,5]
array_sample7.delete(2)
p array_sample7

# delete_at index番号で削除
array_sample8 = [1,2,3,4,5,1,2,3,4,5]
array_sample8.delete_at(2)
p array_sample8

# delete_if 条件に一致するデータを削除
array_sample9 = [1,2,3,4,5]
array_sample9.delete_if {|i| i % 2 == 0}
p array_sample9

# uniq 重複データを削除
array_sample10 = [1,2,3,2,2,2,2,1,2,4,5,6]
array_sample10.uniq!
p array_sample10

# reverse 逆順
array_sample11 = [1,2,3,4,5]
array_sample11.reverse!
p array_sample11

# collect / map 要素の数だけ繰り返しブロック処理を行う（mapとcollectはalias）
array_sample12 = [1,2,3,4,5]
p array_sample12.collect {|i| i += 10}

# チェーンメソッド 配列メソッドを組み合わせてまとめて実行仕組み
array_sample99 = [1,4,2,1,2,7,8,9,5,4,9,8,7,6,3,2]
p array_sample99.uniq.sort.reverse.delete_if{|i| i % 2 == 0}