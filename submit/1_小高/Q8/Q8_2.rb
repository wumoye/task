fruit = {apple: 100,banana: 500,pynappel: 400,meron: 200}

p fruit

fruit.delete_if{ |key, value| value >= 300 }
p fruit

#     ruby Q8_2.rb