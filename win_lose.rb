def main()
	t = STDIN.gets.chomp.to_i
	t.times do |ti|
	  n = STDIN.gets.chomp.to_i
    strengths = STDIN.gets.chomp.split(' ').map(&:to_i).sort.reverse
    energies = STDIN.gets.chomp.split(' ').map(&:to_i).sort.reverse

    win = true
	  n.times do |ni|
	    next if energies[ni] > strengths[ni]
		  win = false
		  break
	  end
	  STDOUT.puts win ? 'WIN' : 'LOSE'
	end
end

main()
