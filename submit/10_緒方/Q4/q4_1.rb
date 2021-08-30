x = gets.to_i

if x%4 == 0 then
    if x%100 == 0 && x%400 != 0
        print(x,":平年\n")
    else
        print(x,":閏年\n")
    end
else
    print(x,":平年\n")
end
