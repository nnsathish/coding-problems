str = ARGV.first.to_s

res = str.each_char.with_object(Hash.new(0)) do |ch, hsh|
  hsh[ch] += 1
end
puts res.to_a.join
