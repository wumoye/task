class Array
    def with_order_print
        i = 0
    (self.size).times{
        print i+1,")",self[i],"\n"
        i+=1
    }
    end
  end
  
  sample_array = ["stay","foolish","stay","hungry"]
  sample_array.with_order_print

  #    ruby Q7_3.rb