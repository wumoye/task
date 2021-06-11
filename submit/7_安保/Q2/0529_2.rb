#BMI計測 (できてないです)
ARGV[0].to_i = kg
ARGV[1].to_f = m

 case kg / (m * m)
 when 0..18.5
  p "TEITAIJYU"
 
 when 18.5...25
  p "FUTU"
 
 when 25...30
  p "HIMAN_1"
 
 when 30...35
  p "HIMAN_2"
 
 when 35...40
  p "HIMAN_3"
 
 else
  p "HIMAN_4"
end