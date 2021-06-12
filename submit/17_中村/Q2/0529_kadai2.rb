input = ARGV[0].to_f

case input
when (0..18.5) then
	puts "低体重"
when  (18.5..24) then
	puts "普通体重"
when (25..29) then
	puts "肥満（１度）"
when (30..34) then
	puts "肥満（２度）"
when (35..39) then
	puts "肥満（３度）"
when (40..100) then
	puts "肥満（４度）"

end