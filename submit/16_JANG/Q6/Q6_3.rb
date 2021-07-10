arr = [ 1, 2, 3, 1, 2, 1, 2, 6, 5 , "c", "ruby", "c"]
newArr = []

arr.each do |i|
  newArr << i unless newArr.include?(i)
end

p newArr
