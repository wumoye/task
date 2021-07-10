def sum_array(arr1=[],arr2=[])
    arr3 = []
    count = 0
    if arr1.size == arr2.size then count = arr1.size
        elsif arr1.size > arr2.size then count = arr2.size
        elsif arr1.size < arr2.size then count = arr1.size
    end

    count -= 1

    for num in 0..count do
    arr3[num] = arr1[num] + arr2[num]
    
    end
    
    return arr3
end

p sum_array([1,2,3],[4,5,6]) 

#  ruby Q6_2.rb