def function(input)
 for x in(1..input) do
  for y in(1..input) do
    if x*y < 10 then
      print 0 
      print (x*y).to_s + ' '
    else
      print (x*y).to_s + ' '
    end
  end
  puts ''
end
end

  puts 'input the num'
  count = gets.to_i
  function(count)

