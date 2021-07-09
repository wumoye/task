class Product

    def initialize(code,name,price)
        @code = code
        @name = name
        @price = price
    end
   
#get method
attr_reader :code 
attr_reader :name
attr_reader :price

#set method    
private
attr_writer :code 
attr_writer :name
attr_writer :price
end

##################

#cell class

##################



class Cell<Product
    @@cellCount = 0
    def initialize(code,name,price,size,phoneNumber)
        super(code,name,price)
        @size = size
        @phoneNumber = phoneNumber
        @@cellCount += 1
    end

    
    
    
    
    def self.cellCount
        @@cellCount
    end



##################

#celphone method block

##################


   def cellPhone
    p @@cellCount.to_s + ")" + "商品コード:" + code  + "  価格は:" + price.to_s + "円" +"  電話番号は:" + phoneNumber
end
   #get method
   attr_reader :size
   attr_reader :phoneNumber
   #setmethod
private
   attr_writer :phoneNumber
end



##################

#camera class

##################





class DigitalCamera < Product

    @@camCount = 0
    def initialize(code,name,price,pixels)
        super(code,name,price)
        @pixels = pixels
        @@camCount += 1
    end





def self.camCount
    @@camCount
end

##################

#camera method block

##################





def camera
    p @@camCount.to_s+ ")" + "商品コードは:" + code  + "   価格は:" + price.to_s + "円" + "  画素数は :" + pixels.to_s + "px"
end



    #getter
    attr_reader :pixels

    private
    attr_writer :pixels
end




##################

#audio player class

##################





class AudioPlayer < Product
    @@mpCount = 0
    @@totalAmount = 0
    def initialize(code,name,price,capacity)
    super(code,name,price)
        @capacity = capacity
        @@mpCount += 1
        @@totalAmount += price
    end


    def self.mpCount
        @@mpCount
    end

    def self.totalAmount
        @@totalAmount
    end

   
##################

#audio method block

##################
def mediaPlayer

    p @@mpCount.to_s+ ")" + "商品コード: " + code + "  価格は:" + price.to_s+ "円" + "  容量は:" + capacity.to_s + "gb" 
   
end

    #getter
    attr_reader :totalAmount
    attr_reader :capacity
private
    #setter
    attr_writer :totalAmount
    attr_writer :capacity
end






##################

#iphone class

##################






class IPhone < Cell
    def initialize(code, name, price, size, phoneNumber, version)
        super(code, name, price, size,phoneNumber)
        @version = version
         
    end


    def display
        p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        p "商品コード: " + code
        p "名前: " + name 
        p "バージョン: " + version
        p "電話番号は:" + phoneNumber
        p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        
    end
    attr_reader :version
    private

    attr_writer :version
end





##################

#utils block

##################
def gencode
    ('a'..'z').sort_by {rand}[0,10].join
end

def gennum
    "0" + (rand(70..90)).to_s + "-" + (rand(1000..9999)).to_s + "-" + (rand(1000..9999)).to_s
end













##################

#questions

##################




    p "携帯電話:"

    (1..3).each do |i|
        size = rand(10..12)
        price = rand(100000..999999)
        phone = Cell.new(gencode,"samsung",price,size,gennum)
        phone.cellPhone()
    end

    p "デジカメ："
    (1..5).each do |i|
        price = rand(50000..1000000)
        pxs = rand(10..100)
        cam = DigitalCamera.new(gencode,"nokia",price,pxs)
        cam.camera()
    end

    p "携帯オーディオ："

    (1..20).each do |i|
        price = rand(6000..10000)
        capacity = rand(100..500)
        mp = AudioPlayer.new(gencode,"ipod",price,capacity)
        mp.mediaPlayer
    end



    p "携帯電話 ： " + Cell::cellCount.to_s
    p "デジカメ ： " + DigitalCamera::camCount.to_s
    p "携帯オーディオ ： " + AudioPlayer::mpCount.to_s
    p "商品数 : " + (Cell::cellCount + DigitalCamera::camCount + AudioPlayer::mpCount).to_s
    p "携帯オーディオ20台の合計金額は  " + AudioPlayer::totalAmount.to_s + " 円"

    p "Iphone"

    price = rand(100000..999999)
    size = rand(6..14)
    iphone = IPhone.new(gencode, "iPhone", price, size, gennum, "14.0",)
    iphone.display
    


    