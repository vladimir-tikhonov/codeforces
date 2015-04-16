input = gets
if input =~ /0{7,}|1{7,}/
  puts 'YES'
else
  puts 'NO'
end