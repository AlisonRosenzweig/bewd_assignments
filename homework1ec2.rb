2.upto(gets.chomp.to_i) { |potential_prime| puts potential_prime unless 2.upto(potential_prime-1).any? { |potential_factor| potential_prime%potential_factor == 0 } }