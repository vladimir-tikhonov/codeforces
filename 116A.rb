n = gets.to_i

passengers_count = 0
max_passengers_count = 0

n.times do
  outcoming, incoming = gets.split.map(&:to_i)
  passengers_count += incoming - outcoming
  max_passengers_count = max_passengers_count > passengers_count ? max_passengers_count : passengers_count
end

puts max_passengers_count