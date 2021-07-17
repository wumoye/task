class Array
  def with_order_print
    self.each_with_index do |val, index|
      puts (index + 1).to_s + ") " + val.to_s
    end
  end
end

sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print
