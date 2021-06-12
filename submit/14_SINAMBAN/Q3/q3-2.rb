(1..9).each do |i|
    line = ""
    (1..9).each do |j|
        buffer = i * j < 10 ? " 0" : " "
        line = line + buffer + (i * j).to_s
    end
    puts line 
end