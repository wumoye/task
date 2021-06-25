def leapYear (year)
  !(year%4!=0) or (year%4==0 and year%100==0 and year%400!=0)
end

(1900..2021).each do |i| 
  puts i.to_s + " " + (leapYear(i) ? "閏年" : "平年")
end