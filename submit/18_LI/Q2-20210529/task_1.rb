age = ARGV[0].to_i

case age

when 4...10
  puts "おはよう"
when 11...18
  puts "こんにちは"
when 19...24,1...3
  puts "こんばんは"
end

