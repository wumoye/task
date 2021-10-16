def to_eng_month(num)
    months = {
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
    months[num]
  end
  
  p to_eng_month()


  hash = {apple: 100, banana: 500, pineapple: 400, melon: 200}
puts hash.delete_if { |k, v| v >= 300 }

  
hash = {apple: 100, banana: 500, pineapple: 400, melon: 200}
hash.each {|k, v| puts "#{k} = #{v} yen"}