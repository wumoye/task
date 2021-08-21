class Array
  def with_order_print
  
  each_with_index do |value, index|
    
     puts "#{index+1})#{value}"
    
    end
  end
end

sample_array = ["stay", "foolish", "stay", "hungry"]
sample_array.with_order_print
