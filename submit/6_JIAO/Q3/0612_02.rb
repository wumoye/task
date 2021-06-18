range = 1..9
range.each do |i|
    range.each do |j|
        printf("%02d ", i*j)
    end
    print "\n"
end
