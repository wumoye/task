#hello world を5回表示させるプログラム
5.times{
    puts "Hello World!"
}
puts "\n"

#九九表プログラム
(1..9).each do |y|
    (1..9).each do |x|
        print sprintf("%02d", x*y), " "
    end

    puts "\n"

end

puts "\n"
#FizzBuzzプログラム

(1..100).each do |fb|
    if fb % 3 == 0 && fb % 5 == 0 then
        puts "Fizz Buzz"
    elsif fb % 3 == 0 then
        puts "Fizz"
    elsif fb % 5 == 0 then
        puts "Buzz"
    else
        puts fb
    end
end