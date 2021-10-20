def my_fun(a, b)
  begin
    a / b
  rescue ZeroDivisionError
    0
  end
end
