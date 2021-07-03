class Product
    @@count = 0
    def initialize(name,code,price)
        @name = name
        @code = code
        @price = price 
        @@count += 1
    end
    def debug()
        puts "商品名は#{@name}で、コードは#{@code}で、価格は#{@price}円で"
        puts "count:" + @@count.to_s
    end
    def self.count()
        @@count
    end
end

class MobilePhone < Product
    @@mobilephone_count = 0
    alias mobilephone_debug debug
    def initialize(name,code,price,size)
            super(name,code,price)
            @size = size
            @@mobilephone_count += 1
    end
    def mobilephone_debug()
        puts "商品名は#{@name}で、コードは#{@code}で、価格は#{@price}円で、液晶サイズは#{@size}です"
    end
    def self.mobile_count()
        @@mobilephone_count
    end
end

class DigitalCamera < Product
    @@degital_camera_count =0
    alias digital_camera_debug debug
    def initialize(name,code,price,size)
            super(name,code,price)
            @size = size
            @@degital_camera_count += 1
    end
    def digital_camera_debug()
        puts "商品名は#{@name}で、コードは#{@code}で、価格は#{@price}円で、画素数は#{@size}です"
    end
    def self.degital_camera_count()
        @@degital_camera_count
    end
end

class Audio < Product
    @@audio_count =0
    @@audio_total_price = 0
    alias audio_debug debug
    def initialize(name,code,price,size)
        super(name,code,price)
        @size = size
        @@audio_count += 1
        @@audio_total_price += price
    end
    def audio_debug()
        puts "商品名は#{@name}で、コードは#{@code}で、価格は#{@price}円で、容量は#{@size}です"
    end
    def self.audio_count()
        @@audio_count
    end
    def self.total_price()
        @@audio_total_price
    end
end
class Iphone < MobilePhone
    alias iphone_debug mobilephone_debug
    def initialize(name,code,price,size,color,face_id)
        super(name,code,price,size)
        @size = size
        @color = color
        @face_id = face_id
    end
    def iphone_debug()
        puts "商品名は#{@name}で、コードは#{@code}で、価格は#{@price}円で、容量は#{@size}、カラーは#{@color}で、フェイスIDは#{@face_id}です"
    end
end

def rand_gen
    rand(10000..99999)
end

mobile_names =["docomo","au","softbank"]
mobile_array =[]
for num in 1..3
    mobile_array.push MobilePhone.new(mobile_names[num -1],rand_gen,rand_gen,rand(10..50))
end


mobile_array.each do |mobile|
    puts mobile.mobilephone_debug()
end
m_count = MobilePhone.mobile_count().to_s
puts "mobile count:" +m_count 
puts "-----------------"

camera_names =["キャノン","ソニー","オリンパス","パナソニック","ニコン"]
camera_array =[]
for num in 1..5
    camera_array.push DigitalCamera.new(camera_names[num -1],rand_gen,rand_gen,rand(10..50))
end

camera_array.each do |camera|
    puts camera.digital_camera_debug()
end
d_count = DigitalCamera.degital_camera_count().to_s
puts "degital camera count:" +d_count 
puts "-----------------"


#p [10000,
#20000,
#30000,
#40000,
#50000,
#60000,
#70000,
#80000,
#90000,
#100000,
#200000,
#300000,
#30000,
#40000,
#50000,
#60000,
#70000,
#80000,
#90000, 100000].

audio_names =["キャノン","ソニー","ONKYO","パナソニック","JVC","キャノン","ソニー","ONKYO","パナソニック","JVC","キャノン","ソニー","ONKYO","パナソニック","JVC","キャノン","ソニー","ONKYO","パナソニック","JVC"]
audio_array =[]
for num in 1..20
    audio_array.push Audio.new(audio_names[num -1],rand_gen,rand_gen,rand(100..200))
end
audio_array.each do |audio|
    puts audio.audio_debug()
end
a_count = Audio.audio_count().to_s
puts "audio count:" +a_count 
a_price = Audio.total_price().to_s
puts "audio total price:" +a_price
puts "-----------------"
iphone = Iphone.new("iphone",11111,60000,443,"red","なし")
iphone.iphone_debug()
puts "-----------------"
count = Product.count().to_s
puts "product count:" +count 

