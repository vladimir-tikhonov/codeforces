n = gets.to_i

solved_tasks = 0
n.times do
  solutions_count = gets.count('1')
  if solutions_count >= 2
    solved_tasks += 1
  end
end

puts solved_tasks