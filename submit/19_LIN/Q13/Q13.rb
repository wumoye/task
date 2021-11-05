# frozen_string_literal: true
require 'thor'

class MyBMI < Thor
  def self.exit_on_failure?
    true
  end

  desc "bmi:[bmi値]([bmi結果])", "BMI＝体重(kg) ÷ (身長(m) Ｘ 身長(m))"

  def bmi(height, wight)
    height = height.to_f / 100
    bmi_result = wight.to_f / (height * height)
    bmi_result = bmi_result.round(1)
    puts "bmi:#{bmi_result}(#{my_bim(bmi_result)})"
  end

  def my_bim(my_bmi)
    case my_bmi
    when 0..18.5
      "低"
    when 18.5..25
      "普通"
    when 25..30
      "肥満（１度）"
    when 30..35
      "肥満（２度）"
    when 35..40
      "肥満（３度）"
    else
      "肥満（４度）"
    end
  end
end

MyBMI.start(ARGV)
