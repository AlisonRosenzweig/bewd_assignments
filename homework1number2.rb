print "This program will sum all numbers from 1 to n. Please define n:"
n = gets.chomp.to_i

i=1 
sum=0

while i <= n
	sum = sum + i
	i = i + 1
end
puts "The sum of the numbers from 1 to 10 is #{sum}"