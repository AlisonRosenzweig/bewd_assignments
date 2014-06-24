maxnum = gets.chomp.to_i

2.upto(maxnum) do |potential_prime| 
	not_prime = 2.upto(potential_prime-1).any? { |potential_factor| potential_prime%potential_factor == 0 }
	unless not_prime 
		puts potential_prime 
	end
end