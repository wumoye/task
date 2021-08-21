data = {apple: 100,banana: 500,pynappel: 400,meron: 200}

p data

data.delete_if do |key,value|
    value >=300

end

p data