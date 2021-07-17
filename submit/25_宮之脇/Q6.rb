#Q6-1
a = Array.new

(1..99).each do |i|
  if(i%3 == 0)
    a.push i
  end
end

p a

#Q6-2
a, b = [1, 2, 3], [4, 5, 6]

def sum_array(a, b)
    if a.size != a.size
    array = []
    a.size.times do |key|
        array[key] = a[key] + b[key]
    end
    array
end

p sum_array(a, b)

#Q6-3
kadai = [ 1, 2, 3, 1, 2, 1, 2, 6, 5 , "c", "ruby", "c"]
p kadai.uniq

#Q6-4
a = [5,6,1,3,4]
p a.sort