n = ARGV.first.to_i

puts "Input #{n} candidate names"

hsh = Hash.new(0)
n.times do |_|
  name = STDIN.gets.chomp
  hsh[name] += 1
end

res = hsh.sort_by { |k, v| [v, k] }.reverse
puts res.first&.first
