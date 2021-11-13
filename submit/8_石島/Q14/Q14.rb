require 'thor'
module WcexCli
    class Wcex < Thor
        class << self
          def exit_on_failure?
            true
          end
        end
        desc "wcex [ファイル名]", "結果:[lines=? words=? chars=?]"
        def wcex(file)
            result =[]
            result.push(`wc -l #{file}`)
            result.push(`wc -w #{file}`)
            result.push(`wc -c #{file}`)

            result.each_with_index do |x, i|
                result[i] = trim(x,file)
            end
            puts "結果:[lines=#{result[0]} words=#{result[1]} chars=#{result[2]}]"
        end
        private
        def trim(text, name)
            text.delete!(name)
            text.chop!
            return text
        end
    end
end
WcexCli::Wcex.start(ARGV)

#実行コード
# $ ruby Q14.rb wcex test.txt
# 結果:[lines=2  words=3  chars=20 ]
