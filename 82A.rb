NAMES = %w( Sheldon Leonard Penny Rajesh Howard ).freeze

n = gets.to_i - 1
current_index = 0
segment_length = 5

until (current_index...(current_index + segment_length)).include?(n)
  current_index += segment_length
  segment_length *= 2
end

name_index = ((n - current_index) / segment_length.to_f * 5).to_i
puts NAMES[name_index]
