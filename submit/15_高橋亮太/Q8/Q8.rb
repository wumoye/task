# Q8-1
def to_eng_month(n)
    month = {
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

    return month[n]
end

p to_eng_month(1)


# Q8-2
q8_2 = {apple: 100,banana: 500,pynappel: 400,meron: 200}

q8_2.delete_if do |key,value|
    value >= 300
end

p q8_2


# Q8-3
q8_3 = {apple: 100,banana: 500,pynappel: 400,meron: 200}

q8_3.each{|key,value|
    print key, " = ", value, " yen\n"
}