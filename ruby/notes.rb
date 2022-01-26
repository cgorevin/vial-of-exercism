matrix_values = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [8, 7, 6]]
result = []
columns.each_with_index do |column,index|
  if index == 0
    column.each {|c| result.push([c]) }
  else
    column.each_with_index {|c,i| result[i].push(c)}
  end
end
result

a, b, c, d = columns
a.zip(b, c, d)

# TODO:
# microwave
# transpose
# grains
# phone-number
# flatten-array
# palindrome-products
# nth-prime
