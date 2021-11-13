require 'thor'

module WcexCli
    class Command < Thor
        desc "wcex <file path>" , "wcex <file_path> [-c: byte count, -w: word count, -l: new line count]"
        
        options :w => :bool, :c => :bool, :l => :bool, :f => :bool

        def wcex(path)
            result = wc #{path}
            arr = result.split(' ')
            hash = [:l,:w,:c,:path].zip(arr).to_h
            if options[:f] || (!options[:l] && !options[:w] && !options[:c])
                opts = "lines=#{hash[:l]} words=#{hash[:w]} chars=#{hash[:c]}"
            else
                opts = []

                opts.push("lines=#{hash[:l]}") if options[:l]
                opts.push("words=#{hash[:w]}") if options[:w]
                opts.push("chars=#{hash[:c]}") if options[:c]
                opts = opts.join(' ')
            end
            result = "結果：[#{slot}]"
            p result
        end
    end
end
WcexCli::Command.start(ARGV)