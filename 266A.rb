_, input = gets, gets.chomp

input_copy = input.dup
index = 0
while input.length > 1 && index + 1 != input.length
  if input[index] == input[index + 1]
    input.slice!(index + 1)
  else
    index += 1
  end
end

puts input_copy.length - input.length