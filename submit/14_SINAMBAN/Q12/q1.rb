class Calculator
  def divide(a, b)
    begin
      a.fdiv(b)
    rescue ZeroDivisionError => e
      0
    end
  end
end

calculator = Calculator.new

a = 5
b = 2

p calculator.divide(a, b)