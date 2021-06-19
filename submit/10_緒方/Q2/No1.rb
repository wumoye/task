param = ARGV[0].to_i

# case文ver.
case param
when 4..10
    print "おはよう"
when 11..18 
    print "こんにちは"
when 19..24, 1..3
    print "こんばんは"
end

# if文ver.
if param >= 4 && param <= 10
    print "おはよう"
elsif param >= 11 && param <= 18
    print "こんにちは"
elsif param >= 19 && param <= 24
    print "こんばんは"
elsif param >= 1 && param <= 3
    print "こんばんは"
end
