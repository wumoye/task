arr = [5,6,1,3,4]

def sort(arr)
  arr1 = arr.dup
  (0...arr1.length()).each do |i|
    min = arr1[i]
    swap = i
    ((i+1)...arr1.length()).each do |j|
      if min > arr1[j]
        min = arr1[j]
        swap = j
      end
    end
      arr1[i], arr1[swap] = min, arr1[i]
  end
  return arr1
end


p sort(arr)
