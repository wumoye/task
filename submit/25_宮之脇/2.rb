def multi_table(num)
    for i in 1..num do
        for j in 1..num do
            print sprintf("%02d", i*j), " "
        end

        puts "\n"
    end
end

multi_table(ARGV[0].to_i)
puts "\n"