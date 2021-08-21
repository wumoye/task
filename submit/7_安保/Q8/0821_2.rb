fruit = {apple: 100, banana: 500, pineapple: 400, melon: 200}

p fruit

fruit.delete_if do |key,value|
value >= 300

end

p fruit