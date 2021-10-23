num = 10

while num > 0
    num.downto(1) {|i| print "*"}
    puts "\n"
    num -= 1
end
