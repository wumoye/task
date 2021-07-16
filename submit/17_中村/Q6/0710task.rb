a=[]
for i in 1..100
   a.push(i) 
end
c = a.dup
p c.select{|i| i % 3 == 0}

def sum_array(array1,array2)
    l = (array1.length)-1
    new_array=[]
    for i in 0..l
        new_array[i] = array1[i] + array2[i]
    end 
    return new_array
end
p sum_array([1,2,3],[4,5,6]) 

array3=[ 1, 2, 3, 1, 2, 1, 2, 6, 5 , "c", "ruby", "c"]
array3.uniq!
p array3

array4 = [5,6,1,3,4]
p array4.sort