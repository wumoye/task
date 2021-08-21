fruit = {apple: 100,banana: 500,pynappel: 400,meron: 200}
sum = 0
fruit.each{|key, value|
    print key , " = " , value , "yen\n"
    sum += value
    #print "sum = ",sum,"\n" 

}
print "sum = ",sum,"\n" 

#     ruby Q8_3.rb