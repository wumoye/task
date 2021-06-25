def leapYear1(year)
  if year % 100 === 0 and year % 400 != 0
   return false
  elsif year % 4 === 0 
    return true
  else
   return false
  end
end

(1900..2019).each do |i|
  puts i.to_s +  "年: " + ( leapYear1(i) ? "閏年です。" : "平年です。" )
end


