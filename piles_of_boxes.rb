arr = ARGV[0].split(',').map(&:to_i)

hsh = arr.each_with_object(Hash.new(0)) do |n, h|
  h[n] += 1
end

sum = 0
hsh.each_with_index do |(k, v), i|
  sum += v * (hsh.size - i - 1)
end

puts sum.inspect
