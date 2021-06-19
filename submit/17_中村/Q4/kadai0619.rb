def year(year)
    if year % 4 == 0 then
        if year % 100 == 0 && year % 400 !=0 then
             print year,":平年\n"
        else
            print year,":平年\n"
        end
    else
        print year,":平年\n"
    end
end
for i in 1900..2019 do
    year(i)
end
        
puts "\n"
        
def table(num)
    (1..num).each do |y|
        (1..num).each do |x|
            if (x * y) < 10
                print 0
                print (x * y)
                print " "
            else
                print (x * y)
                print " "
            end
        end
    puts "\n"
    end
end
table(8)

