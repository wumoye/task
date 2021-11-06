require 'thor'
class wcexCli < Thor
 desc ''
 def wcex(file)
 puts ""
 end
end
wcexCli.start(ARGV)