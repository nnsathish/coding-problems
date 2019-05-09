str = ARGV.first

braces_map = { '{' => '}', '[' => ']', '(' => ')' }
braces = []

# valid = true

# str.chars.each do |ch|
#   if braces_map[ch]
#     braces << braces_map[ch]
#   elsif braces.last == ch
#     braces.pop
#   else
#     valid = false
#     break
#   end
# end

braces = []
valid = str.chars.each do |ch|
  if braces_map[ch]
     braces << braces_map[ch]
  else
    break unless braces.pop == ch
  end
end

puts !valid.nil? && braces.empty?
