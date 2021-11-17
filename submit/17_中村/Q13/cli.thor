require 'thor'
class Cli < Thor 
    desc 'bmi','bmi : hello'
      option :height, :type => :numeric, :aliases => '-h',desc: "height"
       option :weight, :type => :numeric, :aliases => '-w', desc: "weight"
    def bmi
        v = options[:height] * options[:height]
        bmi = options[:weight] / v 
        
        if bmi < 18.5 then
            result = "低体重"
        elsif bmi < 25 then
            result = "普通体重"
        elsif bmi < 30 then
            result = "肥満(1度)"
        elsif bmi < 35 then
            result = "肥満(2度)"
        elsif bmi < 40 then
            result = "肥満(3度)"
        else
            result = "肥満(4度)"
        end
       puts "bmi: #{bmi} (#{result})"  
    end
end
Cli.start