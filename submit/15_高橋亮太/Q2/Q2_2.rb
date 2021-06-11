bmi = ARGV[0].to_f / ARGV[1].to_f * ARGV[1].to_f
puts bmi

case 
when bmi =< 18.5
    puts "低体重"
when bmi == (18.5...25)
    puts "普通体重"
when bmi == (25...30)
    puts "肥満(1度)"
when bmi == (30...35)
    puts "肥満(2度)"
when bmi == (35...40)
    puts "肥満(3度)"
when bmi >= 40
    puts "肥満(4度)"
end
