def to_eng_month(num)
    eng_month = {
        1 => "January",
        2 => "February",
        3 => "March",
        4 => "April",
        5 => "May",
        6 => "June",
        7 => "July",
        8 => "August",
        9 => "September",
        10 => "October",
        11 => "November",
        12 => "December"
    }
    eng_month.fetch(num)
end

p to_eng_month(1)

=begin
for i in 1..12
    p to_eng_month(i)
=end