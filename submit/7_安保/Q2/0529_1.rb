num = ARGV[0].to_i

#if式
if 4 <= num and num <= 10
 p "OHAYOU"

elsif 11 <= num && num <= 18
 p "KONNITIHA"

elsif (19 <= num && num <= 24) || (1 <= num && num <= 3)
 p "KONBANHA"
end


#case式
case num
when 4..10
 p "OHAYOU"
 
when 11..18
 p "KONNITIHA"
 
when 19..24,1..3
 p "KONBANHA"
end