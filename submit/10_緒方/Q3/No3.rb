# 表示ver.
range = 1..100
range.each{|num|
    if (num%3 == 0 && num%5 == 0) then
        puts("Fizz Buzz")
    elsif num%3 == 0 then
        puts("Fizz")
    elsif num%5 == 0 then
        puts("Buzz")
    else
        puts(num)
    end
}

# 入力受け取りver.
inputs = gets.to_i
if (inputs%3 == 0 && inputs%5 == 0) then
    puts("Fizz Buzz")
elsif inputs%3 == 0 then
    puts("Fizz")
elsif inputs%5 == 0 then
    puts("Buzz")
else
    puts(inputs)
end
