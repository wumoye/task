class Array

  def with_order_print
  
	self.each_with_index  do |p,i|
		puts i + p 
	end
  end
end

sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print