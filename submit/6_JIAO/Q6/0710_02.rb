def sum_array(array1,array2)
    l = (array1.length)-1
    new_array=[]
    for i in 0..l
        new_array[i] = array1[i] + array2[i]
    end 
    return new_array
end
p sum_array([1,2,3],[4,5,6]) 