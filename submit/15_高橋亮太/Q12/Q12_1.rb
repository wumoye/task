# 12-1
class Calculator
    def divide(a,b)
        begin
            a.fdiv(b)
        rescue ZeroDivisionError => e
            0
        end
    end
end

calculator = Calculator.new

a = 36
b = 6

p calculator.divide(a,b) 

