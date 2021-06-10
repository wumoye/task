puts "数字を入れてください"
time = gets.to_i
print "入力された時間:",time,"\n"


case time 
  when 4 .. 10 then puts "おはよう"
  when 11 .. 18 then puts "こんちには"
  when 19 .. 24 ,1 .. 3 then puts "こんばんわ"
  else puts "時間を入力してください"
end


if time.to_i >= 4 && time.to_i <= 10
  puts "おはよう"

elsif time.to_i >= 11 && time.to_i <= 18
  puts "こんにちは"

elsif (time.to_i >= 19 && time.to_i <= 24) or (time.to_i >=1 && time.to_i <= 3)
  puts "こんばんわ"

else puts "時間を入力してください"

end







=begin 
学校のPCでは正しく動いたが家のPCだとエラーが出たコード

puts "数字を入れてください"
time = gets.to_i
print "入力された時間:",time,"\n"


case time 
when 4 .. 10 then
  puts "おはよう"
when 11 .. 18 then
  puts "こんちには"
when 19 .. 24 ,1 .. 3 then
  puts "こんばんわ"

else
  #どの値にも一致しない場合に行う処理
  puts "時間を入力してください"
end


if time==4..10 then
    puts "おはよう"
  elsif time == 11..18 then
    puts "こんにちは"
  elsif time  ==  19..24 or 1..3 then
    puts "こんばんわ"
  else
    puts "時間を入力してください"
  end

=end