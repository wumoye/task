(1..100).each do |i|
    if i % 15 == 0
        p "Fizz Buzz"
    elsif i % 5 == 0
        p "Buzz"
    elsif i % 3 == 0
        p "Fizz"
    else
        p i
    end
end