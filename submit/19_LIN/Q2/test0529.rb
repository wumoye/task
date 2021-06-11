num = ARGV[0].to_i
case num
when 4 .. 10
    puts "おはよう"
when 11 .. 18
    puts "こんにちは"
when 19 .. 24
    puts "こんばんは"
when 1 .. 3
    puts "こんばんは"
else
    puts "１から２４までを入力してください"

end