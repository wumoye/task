list = {apple: 100,banana: 500,pynappel: 400,meron: 200}

 p list

 list.delete_if{ |key, value| value >= 300 }

 p list
