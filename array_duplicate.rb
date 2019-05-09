arr = ARGV.map(&:to_i)
n = arr.size

arr.each do |no|
  ind = no % n
  arr[ind] += n
  puts arr.inspect
end

res = arr.each_index.select { |i| (arr[i] / n) > 1 }
puts res.inspect
