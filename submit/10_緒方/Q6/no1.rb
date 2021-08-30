a = (1..100).to_a
b = []
(0..99).each{|i|
    if a[i] % 3 == 0
        b.push(a[i])
    end
}
print(b)
