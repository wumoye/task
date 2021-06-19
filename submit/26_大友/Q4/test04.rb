def uruu (n)
  if n % 4 != 0
    puts "平年です!!"
  elsif n % 100 == 0 && n % 400 !=0
    puts "平年です!!"
  else
    puts "うるう年です!!"
  end
end
uruu(1900)
uruu(1980)
uruu(2000)
uruu(2019)
$ ruby uruu.rb
#=>
