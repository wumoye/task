i = 0
array = []

def x3(num)
    if (num % 3) == 0 then return num 
    else  return nil 
    end
    
end

for num in 1..100 do
    if x3(num) != nil 
        then array[i] = x3(num)
        #print array[i]
        i += 1
    end
end

p array





# ruby Q6_1.rb