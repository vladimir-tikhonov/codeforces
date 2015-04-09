input = gets.split.map(&:to_i)
max, min = input.max, input.min

result = (max / 2) * min
if max % 2 == 1
  result += min / 2
end

puts result