class Array
    def with_order_print()
        self.each_with_index do |v, i|
            puts "#{i + 1} #{v}"
        end
    end
end

sample_array = ["stay","foolish","stay","hungry"]
sample_array.with_order_print