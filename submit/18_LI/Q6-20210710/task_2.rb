# frozen_string_literal: true

def sum_array(a, b)
  @c = []
  a.size.times do |i|
    @c.push(a[i] + b[i])
  end
  @c
end

p sum_array([1, 2, 3], [4, 5, 6])
