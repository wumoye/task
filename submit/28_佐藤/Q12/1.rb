def division(a, b)
    begin
        return a / b
    rescue
        return 0
    end
end

puts division(6, 0)