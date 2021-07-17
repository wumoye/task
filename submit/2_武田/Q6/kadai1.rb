a = (1..100).to_a
c = a.delete_if{|i| i % 3 != 0}
p c