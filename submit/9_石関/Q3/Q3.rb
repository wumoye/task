#5.times do
#puts("Hello World!")
#end


(1..9).each{|i|
    (1..9).each{|n|
    sum = i*n
    if sum < 10 then
        print("0",sum," ")
    else
        print(sum," ")
    end
    }
    puts""
}

for i in 1..100

    if i % 15==0
        puts "FizzBuzz"
    elsif i % 3==0
        puts "Fizz"
    elsif i % 5==0
        puts "Buzz"
    else puts i
    end
end