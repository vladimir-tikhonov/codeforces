def build_table(n)
  result = {}
  n.times do |time|
    result[time] = [1]
  end
  result[0] = [1] * n

  1.upto(n - 1) do |x|
    1.upto(n - 1) do |y|
      result[y][x] = result[y][x - 1] + result[y - 1][x]
    end
  end
  result
end

n = gets.to_i

p build_table(n)[n-1][n-1]