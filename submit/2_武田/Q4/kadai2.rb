number = ARGV[0].to_i

def pow(num)
    for i in 1..num 
        for j in 1..num
            print(format("%02d ", i * j))
        end
        puts ""
    end
end

pow(number)