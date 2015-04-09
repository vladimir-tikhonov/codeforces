TAXI_CAPACITY = 4

def reject_and_count_max(arr)
  result = arr.count(TAXI_CAPACITY)
  arr.delete(TAXI_CAPACITY)
  result
end

def reject_first_and_last_element(arr)
  arr.pop
  arr.shift
end


_, groups = gets, gets.split.map(&:to_i).sort
taxis_count = reject_and_count_max(groups)
groups.sort!

if groups.count < 2
  puts taxis_count + groups.count
  exit
end

sum = groups[0] + groups[-1]
while groups.count >= 2
  if sum > 4
    groups.pop
    taxis_count += 1
  elsif sum == 4
    taxis_count += 1
    reject_first_and_last_element(groups)
  elsif sum == 3
    reject_first_and_last_element(groups)
    groups.push(sum)
  else
    reject_first_and_last_element(groups)
    groups.push(sum)
    if groups.count >= 2 && groups[-2] > groups[-1]
      groups.sort!
    end
  end
  sum = groups[0] + groups[-1] if groups.count >= 2
end

taxis_count += reject_and_count_max(groups)

puts taxis_count + groups.count