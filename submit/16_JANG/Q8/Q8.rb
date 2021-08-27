#1
def to_eng_month(v)
  m = {
    1 => 'january',
    2 => 'february',
    3 => 'march',
    4 => 'april',
    5 => 'may',
    6 => 'june',
    7 => 'july',
    8 => 'august',
    9 => 'september',
    10 => 'october',
    11 => 'november',
    12 => 'december'
  }
  m[v]
end

p to_eng_month(1)

#2
hash = {apple: 100, banana: 500, pineapple: 400, melon: 200}
puts hash.delete_if{|k,v| v >= 300}


#3
hash = {apple: 100, banana: 500, pineapple: 400, melon: 200}
sum = 0
hash.each do|k,v|
  puts "#{k}=#{v}yen"
  sum+=v
end
puts "sum=#{sum}yen"