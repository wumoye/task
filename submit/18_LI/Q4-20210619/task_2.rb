# frozen_string_literal: true

def multiplication(input)
  (1..input).each do |i|
    (1..input).each do |j|
      print "#{format('%02d', (i * j))} "
      puts '' if j == input
    end
  end
end

puts '数字を入力してください。'
count = gets.to_i
multiplication(count)

