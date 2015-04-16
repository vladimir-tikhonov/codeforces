input =  gets
if input =~ /\A[A-Z]+\Z/ || input[1..-1] =~ /\A[A-Z]*\Z/
  puts input.swapcase
else
  puts input
end