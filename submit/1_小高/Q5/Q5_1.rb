class Stuff
 attr_reader :code,:name,:price
 @@count = 0
  def initialize(code,name,price)
    @code = code
    @name = name
    @price = price

    @@count += 1
  end

  def p1
   print "商品コードは" , code, " 価格は" , price," "

  end

  def count
    print  "商品数:",@@count,"台\n"
  end
end

class Phone < Stuff
  attr_reader :size,:num
  @@count2 = 0
  
  def initialize(code,name,price,size,num)
    super(code, name, price)
  @size = size
  @num = num
  
  @@count2 += 1
  end

  def p2
  p1()
  print "電話番号は", num,"\n"

  end

  def count2
    print "携帯電話:",@@count2,"台\n"
  end

end

class Camera < Stuff
  attr_reader :gaso
  @@count2 = 0

  def initialize(code,name,price,gaso)
    super(code,name,price)
    @gaso = gaso

    @@count2 += 1
  end

  def p2
    p1()
    print  "画素数は",gaso,"\n"
  end
 
  def count2
    print "デジカメ:",@@count2,"台\n"
  end
end

class Audio < Stuff
  attr_reader :capa
  @@count2 = 0
  @@sum_price = 0

  def initialize(code,name,price,capa)
    super(code,name,price)
    @capa =  capa
    
    @@count2 += 1
    @@sum_price += price.to_i
  end

  def p2
    p1()
    print  "容量は", capa,"\n"
  end
  
  def count2
    print "携帯オーディオ:",@@count2,"台\n"
  end

  def sum
    print "携帯オーディオ",@@count2,"台の合計金額は",@@sum_price,"万円\n"
  end
end

class IPhone < Phone
  attr_reader :ios
  @@count3 = 0
  
  def initialize(code,name,price,size,num,ios)
    super(code, name, price,size,num)
    @ios = ios
  
    @@count3 += 1
  end

  def count3
    print "携帯電話:",@@count3,"台\n"
  end

  def p3
  p1()
  print "電話番号は", num," iosバージョンは",ios,"\n"
  end

end

#重複しない乱数
def rands(n,m)
  result=[] #配列
  memo  ={} #ハッシュ?
  m = n if n < m
  1.upto(m){|low|
      v = rand(low..n)
      if !memo[v]
          result << v
          memo[v] = memo[low] || low
      else
          result << memo[v]
          memo[v] = memo[low] || low
      end
  }
  return result
end

def phone_num
 a= "090-",rand(000..999).to_s,"-",rand(000..999).to_s
 return a.join
end

def phone_size
  return rand(5.0..7.0).truncate(1)
end

def phone_price
  a = rand(6..17),"万円"
  return a.join
end
 
def camera_gaso
  a = rand(80..300),"万画素"
  return a.join
end

def audio_capa
  return 4*rand(1..32) 
end
#重複のない配列生成
ai = rands(10000,29)


puts "携帯電話:"
for num in 0..2 do
  phone = Phone.new(ai[num],"スマホ",phone_price,phone_size,phone_num)
  phone.p2
end

puts "デジカメ:"
for num in 3..7 do
  camera = Camera.new(ai[num],"カメラ",phone_price,camera_gaso)
  camera.p2
end

puts "オーディオ:"
for num in 8..27 do
  audio = Audio.new(ai[num],"オーディオ",phone_price,audio_capa)
  audio.p2
end


print "\n\n 商品数一覧 \n"
phone.count2
camera.count2
audio.count2
phone.count

print "\n\n"

audio.sum

print "\n\n"
Zer0 = rand(0.0..20.0).truncate(2)

puts "iPhoneクラス"

iPhone = IPhone.new(ai[28],"iPhoneZer0",phone_price,phone_size,phone_num,Zer0)
iPhone.p3
#     ruby Q5_1.rb

=begin
def rands(n,m)
    result=[]
    memo  ={}
    m = n if n < m
    1.upto(m){|low|
        v = rand(low..n)
        if !memo[v]
            result << v
            memo[v] = memo[low] || low
        else
            result << memo[v]
            memo[v] = memo[low] || low
        end
    }
    return result
end

100.times{
    puts rands(10,5)*" "
}
=end