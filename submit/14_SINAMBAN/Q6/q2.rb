a, b = [1, 2, 3], [4, 5, 6]

def sum_array(a, b)
    return "error: lengths are not the same" if a.size != a.size
    array = []
    a.size.times do |key|
        array[key] = a[key] + b[key]
    end
    array
end

p sum_array(a, b)