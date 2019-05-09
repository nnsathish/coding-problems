arr = ARGV.map(&:to_i)

# METHOD 1: BRUTE FORCE
# ---------------------
# max_diff = -1
# max_no = arr.first

# arr[1..-1].each_with_index do |n, i|
#   next if n < max_no
#   max_no = n

#   arr[0..i].each do |x|
#     next if n < x
#     diff = n - x
#     max_diff = diff if diff > max_diff
#   end
# end

# puts max_diff
#
# METHOD 2: Optimal
# -----------------

diff = arr[1] - arr[0]
curr_sum = diff
max_sum = curr_sum

arr[1..-2].each_with_index do |n, i|
  diff = arr[i+2] - n
  curr_sum > 0 ? curr_sum += diff : curr_sum = diff
  max_sum = curr_sum if curr_sum > max_sum
end

# p max_sum


# METHOD 3: Optimal & READABLE
# ----------------------------
#
max_diff = arr[1] - arr[0]
min_no = arr[0]

arr[1..-1].each do |no|
  diff = no - min_no
  if diff > max_diff
    max_diff = diff
  end
  min_no = no if no < min_no
end

p max_diff
