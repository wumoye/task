def division
    begin
        puts "数字を2つ入力してください"
        num1 = gets
        num2 = gets
        puts "結果: #{num1.to_i / num2.to_i}"
    rescue => e
        #エラー処理
        puts "error:" + e.message
        
    end
end
division()


class InvalidError < StandardError
    def message
        "名前を入力してください"
    end
end

def excep(name)
    begin
        puts "hello " + name
    raise InvalidError if(name === " ")
    end
end
excep(" ")