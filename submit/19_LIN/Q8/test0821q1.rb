def to_eng_month(num)

   hash_month = {  1 => 'January',
                   2 => 'February',
                   3 => 'March',
                   4 => 'April',
                   5 => 'May',
                   6 => 'Jun',
                   7 => 'Jul',
                   8 => 'August',
                   9 => 'September',
                   10 => 'October',
                   11 => 'November',
                   12 => 'December' 
                 }

    hash_month[num]

 end

 p to_eng_month()
