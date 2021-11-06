require 'thor'

class BmiCalc < Thor
    default_command :bmi
    desc 'bmi','bmi:[bmi値] [bmi結果]'
    def bmi(height, weight)
        m_height = height.to_f / 100
        bmi = (weight.to_f / (m_height * m_height)).round(1)
        comment = self.get_bmi(bmi)
        puts "bmi: #{bmi} #{comment}"
    end
    
    private
    def get_bmi(bmi)
        case bmi 
            when 0...18.5 then
                "低体重"
            when 18.5...25 then 
                "普通体重"
            when 25...30 then 
                "肥満(1度)"
            when 30...35 then 
                "肥満(2度)"
            when 35...40 then 
                "肥満(3度)"
            else
                "肥満(4度)"
        end
    end
end

BmiCli.start(ARGV)