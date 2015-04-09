n = gets.to_i

x = 0
n.times do
  if gets.count('+') != 0
    x += 1
  else
    x -= 1
  end
end

puts x