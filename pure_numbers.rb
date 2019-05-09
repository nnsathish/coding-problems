# 44
# 55
# 4444
# 4554
# 5445
# 5555
# 444444
# 445544
# 454454
# 455554
# 544445
# 545545
# 554455
# 555555
# 44444444
# 44455444
# 44544544
# 45444454
# 45455454
# 45544554
# 45555554

n = ARGV.first.to_s.to_i

seq_sum = 0
# find x in 2^1 + 2^2 + 2^x = n
len = n.times do |i|
  break(i) if seq_sum >= n
  seq_sum += 2 ** (i+1)
end
puts "length=" + len.to_s

start_seq = '4' * len
distance_from_seq = n - (seq_sum - (2 ** len)) - 1

number = (start_seq.to_i + distance_from_seq.to_s(2).to_i).to_s
puts number + number.reverse
