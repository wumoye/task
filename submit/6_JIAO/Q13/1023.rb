# frozen_string_literal: true
require 'thor'

class MyBMI < Thor
  def self.exit_on_failure?
    true
  end

  desc 'bmi:[bmi値]([bmi結果])', 'BMI＝体重(kg) ÷ (身長(m) Ｘ 身長(m))'

  def bmi(height, wight)
    height = height.to_f / 100
    bmi_result = (wight.to_f / (height * height)).round(1)
    puts "bmi:#{bmi_result}(#{get_bim(bmi_result)})"
  end

	
    private
    def get_bim(my_bmi)
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

MyBMI.start(ARGV)
