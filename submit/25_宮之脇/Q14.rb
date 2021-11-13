require 'thor'

module Cli
    class Command < Thor
        desc 'wecx','print -l -w -m'

        def wcex(text)
            result = 'wc #{text}'
            array = result.split(' ')
            puts "結果:[lines=#{array[0]} words=#{array[1]} chars=#{array[2]}]"
            puts "failure" if $?.exitstatus !=0
        end
    end
end
Cli::Command.start(ARGV)