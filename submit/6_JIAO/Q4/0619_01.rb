def leap(year)
    if year % 100 === 0 && year % 400 != 0
        false
    elsif year % 4 === 0
        true
    else
        false
    end
end

for i in 1900..2019
    print "#{i}年: "
    if leap(i)
        print "閏年"
    else
        print "平年"

    end
    print "です\n"
end