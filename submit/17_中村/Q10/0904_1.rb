begin
    file = File.open("./sample.html","r")
    lines = ""
    
    file.each_line do |l|
        lines = lines,l,"\n"
    end
    
    
#実行結果1
#    lines.to_s.scan(/(?<=<a>).*?(?=<\/a>)/) do |m|
#        puts m
#実行結果2
    lines.to_s.scan(/(?<=<p>).*?(?=<\/p>)/) do |m|
        puts m


end
    
rescue => e
    puts "error:" + e.massage
ensure
    file.close
    
end