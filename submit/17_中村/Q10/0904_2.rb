begin
    file = File.open("./sample2.html","r")
    lines = ""
    
    file.each_line do |l|
        lines = lines,l,"\n"
    end
    
    lines.to_s.scan(/(?<=<a>)?.*?<?=<\/a>/) do |m|
        puts m


end
    
rescue => e
    puts "error:" + e.massage
ensure
    file.close
    
end