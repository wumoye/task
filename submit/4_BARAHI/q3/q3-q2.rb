

(1..9).each do |i|
    number = ""
    (1..9).each do |j|
        if (i * j) < 10
            number += "0" + (i*j).to_s + " "
        else
            number += (i*j).to_s + " "  
        end    
    end
    puts number
end