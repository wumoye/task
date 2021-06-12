case BMI
when <=18.4 then
    '低体重'
when <=18.5,<=24.9 then
    '普通体重'
when <=25,<=29.9 then
    '肥満(１度)'
when <=30,<=34.9 then
    '肥満(２度)'
when <=35,<=39.9 then
    '肥満(３度)'
when >=40
    '肥満(４度)'