def sum_array(a,b)
   array = []
    a.size.times do |key|
        array[key] = a[key] + b[key]
    end
    array
end
p sum_array([1,2,3],[4,5,6])