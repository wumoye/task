require 'thor'
class BMI < Thor
  def self.exit_on_failure?
    true
  end
  desc 'bmi:[bmi値]([bmi結果])', 'BMI＝体重(kg) ÷ (身長(m) Ｘ 身長(m))'
  def bmi(height, wight)
    height = height.to_f / 100
    bmi_result = (wight.to_f / (height * height)).round(1)
    puts "bmi:#{bmi_result}(#{get_bim(bmi_result)})"
  end
  def get_bim(bmi)
    if bmi < 18.5
      '低体重'
    elsif bmi >= 18.5 && bmi < 25
      '平常'
    elsif bmi >= 25 && bmi < 30
      '肥満（１度）'
    elsif bmi >= 30 && bmi < 35
      '肥満（２度）'
    elsif bmi >= 35 && bmi < 40
      '肥満（３度）'
    else
      '肥満（４度）'
    end
  end
end
BMI.start(ARGV)