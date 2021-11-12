require "thor"

class BmiCalculator < Thor
  class << self
    def exit_on_failure?
      true
    end
  end

  desc "bmi", "bmi calculator"
  def bmi(cm, kg)
    m = cm.to_f / 100
    bmi = (kg.to_f / (m * m)).round(2)
    bmi_level = self.get_level(bmi)
    puts"bmi: #{bmi}(#{bmi_level})"
  end

  private
  def get_level(bmi)
    case bmi
      when 0..18.5 then
        '低体重'
      when 18.5..25 then
        '普通体重'
      when 25..30 then
        '肥満（１度）'
      when 30..35 then
        '肥満（2度）'
      when 35..40 then
        '肥満（3度）'
      else
        '肥満（4度）'
    end
  end
end

BmiCalculator.start(ARGV) 
