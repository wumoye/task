(1..9).each {|num1|
  (1..9).each {|num2|
    if num1 * num2 < 10 then
      print("0", num1 * num2, " ")
    else
      print(num1 * num2, " ")
    end
  }
  print("\n")
}