for i in 1..100 do
    if i%15 == 0
        print "FizzBuzz\n"
    elsif i%5 == 0
        print "Buzz"
    elsif i%3 == 0
        print "Fizz"
    else
        print i
    end
    print ", "
end