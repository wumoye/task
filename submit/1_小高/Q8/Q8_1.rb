
def to_eng_month(num)
    month = {
        1 => "January",
        2 => "February",
        3 => "March",
        4 => "April",
        5 => "May",
        6 => "Jun",
        7 => "Jul",
        8 => "August",
        9 => "September",	
        10 => "October",
        11 => "November",
        12 => "December"
    }

    return month[num]
end

p to_eng_month(1) 

#  ruby Q8_1.rb