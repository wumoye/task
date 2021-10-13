ary = [1, 2, 3, 4, 5]

4.downto(2) {|i| 
  p ary.reverse[1..i]
}
