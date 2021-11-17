require 'thor'
 module Cli 
  class Command < Thor

   desc "pwd", "print pwd"

   def pwd 
     puts `pwd`
     puts "fail"if $?.exitstatus != 0 
   end  

  desc "list files", "print list files -la"  

  def list files    
    puts `list files -la`   
    puts "fail" if $?.exitstatus != 0   
  end 

  desc "wcex", "wcex file name"

   def wcex(file)
     bytes = `wc -c < #{file}`
     words = `wc -w < #{file}`
     lines = `wc -l < #{file}`
     bytes = bytes.strip
     words = words.strip
     lines = lines.strip
     puts "result:[bytes=#{bytes} words=#{words} lines=#{lines}]"
     puts "failure" if $?.exitstatus != 0   

   end
  end
 end
 Cli::Command.start(ARGV)