def multiplicationTable(val)
    (1..val).each do |i|
        line = ""
        (1..val).each do |j|
            buffer = i * j >= 10 ? " " : " 0"
            line = line + buffer + (i * j).to_s
        end
        puts line
    end
end

multiplicationTable(4)