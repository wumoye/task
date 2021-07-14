# frozen_string_literal: true

a = Array.new(100) { |index| (index + 1) }
c = []
a.each do |i|
  c.push(i) if (i % 3).zero?
end
p c
