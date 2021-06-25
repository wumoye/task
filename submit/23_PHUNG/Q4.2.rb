def multi_table(num)
    for i in 1..num do
        for j in 1..num do
          if i*j < 10 then
            print "0", i*j, " "
          else
            print i*j, " "
          end
        end
        puts "\n"
    end
end
puts "数字を入れてください"
num = gets.to_i
print "入力された時間:",num,"\n"
multi_table(num)