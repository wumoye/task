puts ({ apple: 100, banana: 500, pynappel: 400, meron: 200 }.delete_if { |key, value| value.to_i >= 300 })


