kg = ARGV[0].to_i
m = ARGV[1].to_f

def getBmi(kg, m)
    case kg / (m * m)
    when 0..18.5
        "低体重"
    when 18.5..25
        "普通体重"
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

if kg == 0 || m == 0
    p "Please enter weight and/or height!"
elsif m >= 3
    p "Please enter height in meters!"
else
    p getBmi(kg, m)
end