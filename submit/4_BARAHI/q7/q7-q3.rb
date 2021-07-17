sample_array = ["stay","foolish","stay","hungry"]

class << sample_array

    def with_order_print

        (0...4).each do |i|
            p ( i + 1).to_s + ")" + self[i]
        end

    end


end



sample_array.with_order_print