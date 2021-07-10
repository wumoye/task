a = Array.new(3)
b = Array.new(3)


def sum(a,b)
  sum_array = Array.new
  for i in a do
    r = a[i-1] + b[i-1]
    p r
    sum_array.push(r)
  end
  return sum_array
end

p sum([1,2,3],[1,2,3])
