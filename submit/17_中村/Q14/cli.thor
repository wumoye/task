require 'thor'
module Cli 
 class Command < Thor 
  desc "pwd", "print pwd" 
  def pwd 
    puts `pwd`
    puts "failure"if $?.exitstatus != 0 
  end  
 desc "ls", "print ls -la"  
 def ls    
   puts `ls -la`   
   puts "failure" if $?.exitstatus != 0   
 end 
 
 desc "wcex", "wcex file name"
 def wcex(file)
    bytes = `wc -c < #{file}`
    words = `wc -w < #{file}`
    lines = `wc -l < #{file}`
    bytes = bytes.strip
    words = words.strip
    lines = lines.strip
    puts "結果:[bytes=#{bytes} words=#{words} lines=#{lines}]"
    puts "failure" if $?.exitstatus != 0   
 end
end
end
Cli::Command.start