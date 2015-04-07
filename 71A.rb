n = gets.to_i

n.times do
  word = gets.chomp
  if word.length > 10
    puts "#{word[0]}#{word.length - 2}#{word[-1]}"
  else
    puts word
  end
end