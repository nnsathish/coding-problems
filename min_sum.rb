def minSum(num, k)
  num = num.sort { |a, b| b <=> a }

  k.times do
    no = num.shift
    no = (no / 2.0).ceil

    num.each_with_index do |n, i|
      puts "#{num}, #{n}, #{i}"
      if (no > n) || (i == num.size - 1)
        num.insert(i, no)
        break
      end
    end
    puts num.inspect
    num << no if num.empty?
  end

  num.sum
end

res = minSum(ARGV[0].split(',').map(&:to_i), ARGV[1].to_i)
puts res.inspect
