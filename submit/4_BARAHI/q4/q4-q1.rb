def leapyear(year)      
  if year % 4 == 0 
    puts year.to_s + ':閏年'
 elsif year % 400!=0 && year % 100 == 0 
   puts year.to_s + ':平年'
else  
   puts year.to_s + ':閏年'
end
end


(1900..2019).each do |y|
  leapyear(y)
end


