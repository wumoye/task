def division(a, b)
    begin
        a / b
    rescue
        0
    end
end

n1 = ARGV[0].to_i
n2 = ARGV[1].to_i

puts division(n1,n2)