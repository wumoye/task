x = gets.to_i
range = 1..x

range.each{|num1|
    range.each{|num2|
        if num1*num2 < 10 then
           print(0,num1*num2," ")
        else
            print(num1*num2," ")
        end
    }
    puts()
}
