ary = [1, 2, 3, 4, 5]

ary.delete_at(4)
newary = ary.reverse

index = 3
while index > 0
    print(newary,"\n")
    newary.delete_at(index)
    index -= 1
end
