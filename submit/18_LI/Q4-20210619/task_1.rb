# frozen_string_literal: true

def leap_year(year)
  return false unless (year % 4).zero?
  return false if (year % 100).zero? && !(year % 400).zero?

  true
end

(1900..2021).each do |i|
  if leap_year(i)
    puts "#{i}:閏年"
  else
    puts "#{i}:平年"
  end
end

