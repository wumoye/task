range = 1..100
range.each {|num|
  if(num%3==0 && num%5==0) then
    puts "Fizz Buzz"
  elsif(num%5==0) then
    puts "Buzz"
  elsif(num%3==0) then
    puts "Fizz"
  else
    puts num
  end
}