number = ARGV.first.to_i

res = (3..(number - 1)).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }
puts res.sum
