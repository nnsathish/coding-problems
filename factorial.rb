n = ARGV.first.to_i

def factorial(no)
  return 1 if no == 1
  no * factorial(no - 1)
end

puts factorial(n).inspect
