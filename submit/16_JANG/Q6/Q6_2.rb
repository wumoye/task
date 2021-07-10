def array_sum(arr1, arr2)
  arr = []
  arr1.size.times.each do |i|
    arr[i] = arr1[i] + arr2[i]
  end

  return arr
end

arr1 = [1,2,3]
arr2 = [4,5,6]

p array_sum(arr1, arr2)
