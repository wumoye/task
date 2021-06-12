weight = ARGV[0].to_i
height = ARGV[1].to_i
bmi = weight / (height * height)

case bmi
when 0...18.5
    print "低体重"
when 18.5...25
    print "普通体重"
when 25...30
    print "肥満(1度)"
when 30...35
    print "肥満(2度)"
when 35...40
    print "肥満(3度)"
else
    print "肥満(4度)"
end
