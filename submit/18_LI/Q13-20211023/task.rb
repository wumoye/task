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

  def get_bim(my_bmi)
    if my_bmi < 18.5
      '低'
    elsif my_bmi >= 18.5 && my_bmi < 25
      '普通'
    elsif my_bmi >= 25 && my_bmi < 30
      '肥満（１度）'
    elsif my_bmi >= 30 && my_bmi < 35
      '肥満（２度）'
    elsif my_bmi >= 35 && my_bmi < 40
      '肥満（３度）'
    else
      '肥満（４度）'
    end
  end
end

MyBMI.start(ARGV)
