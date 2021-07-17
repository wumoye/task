#Q6-1
puts "Q6-1"
a = []
for i in 1..99 do
    a[i - 1] = i
end
p a

c = a.delete_if{|i| i % 3 != 0}
p c

def sum_array(a,b)
    if a.instance_of?(Array) && b.instance_of?(Array)
        a + b
    end
end


#Q6-2
puts "\n\nQ6-2"
def sum_array(arr1=[],arr2=[])
    arr3 = []
    count = 0
    if arr1.size == arr2.size then 
        count = arr1.size
    elsif arr1.size > arr2.size then 
        count = arr2.size
    elsif arr1.size < arr2.size then 
        count = arr1.size
    end

    count -= 1

    for num in 0..count do
    arr3[num] = arr1[num] + arr2[num]
    
    end
    
    return arr3
end

p sum_array([1,2,3],[4,5,6]) 


#Q6-3
puts "\n\nQ6-3"
q6_3 = [ 1, 2, 3, 1, 2, 1, 2, 6, 5 , "c", "ruby", "c"]
p q6_3 | q6_3

#Q6-4
puts "\n\nQ6-4"
q6_4 = [5,6,1,3,4]

q6_4 = [5,6,1,3,4]

p q6_4.sort