str = ARGV.first
numbers = str.split(' ')

# weights_map = numbers.each_with_object([]) do |no, arr|
#   arr << [no, no.chars.sum(&:to_i)]
# end

# res = weights_map.sort_by { |no, weight| [weight, no] }.map(&:first).join(' ')
res = numbers.sort_by { |no| [no.chars.sum(&:to_i), no] }.join(' ')
puts res
