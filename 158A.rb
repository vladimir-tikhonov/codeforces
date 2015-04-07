_, k = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)

target_score = scores[k - 1]

p scores.select { |s| s >= target_score }.select { |i| i > 0 }.count