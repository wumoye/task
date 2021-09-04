def sum_array(ar1, ar2)
    c = []
    (0..2).each{|i|
        c.push(ar1[i]+ar2[i])
    }
    print(c)
end
puts(sum_array([1,2,3],[4,5,6]))
