input = ARGV[0].to_i

# if style
# if 4 <= input and input <= 10
#     p "おはよう"
# elsif 11 <= input && input <= 18
#     p "こんにちは"
# elsif (19 <= input && input <= 24) || (1 <= input && input <= 3)
#     p "こんばんは"
# end

# case style
case input
when 4..10
    p "おはよう"
when 11..18
    p "こんにちは"
when 19..24, 1..3
    p "こんばんは"
end