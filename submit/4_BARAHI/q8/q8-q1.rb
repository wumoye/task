def to_eng_month(month)
  mnths = {1=>"january",2=>"feburary",3=>"march",4=>"april",5=>"may",6=>"june",7=>"july",8=>"august",9=>"september",10=>"october",11=>"november",12=>"december"}
  mnths[month]
end 

p to_eng_month(1);

