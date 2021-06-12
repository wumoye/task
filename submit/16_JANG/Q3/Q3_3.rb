for i in 1..100
  if i % 15 == 0
    print "fizzbuzz "
  elsif i % 3 == 0
    print "fizz "
  elsif i % 5 == 0
    print "buzz "
  else
    print "#{i} "
  end
end