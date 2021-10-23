def divide(a,b)
    begin
        a/b
    rescue ZeroDivisionError => e
        0
    end
end

p divide(10,0)