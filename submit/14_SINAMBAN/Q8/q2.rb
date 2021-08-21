hash = {apple: 100, banana: 500, pineapple: 400, melon: 200}
puts hash.delete_if { |k, v| v >= 300 }