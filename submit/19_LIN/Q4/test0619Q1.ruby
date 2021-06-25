 def  IsLeapYear(y)
 if ((y % 4 == 0) and (y  %  100 != 0)) or (y % 400 == 0)
  1 
  else 
  0
   end
   end
  

   (1990..2021).each do |i|
    IsLeapYear(i)
    
  if IsLeapYear(i) == 1 
    print  "#{i}:This is Leap year!\n " 
  else 
    print  "#{i}:This is not Leap year!\n " 
    end
    end
 
