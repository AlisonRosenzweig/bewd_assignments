data = []

100.times do |x|
	index = x + 1
	data.push(
		{ user:
			{id: index,
			email: "user_#{index}@gmail.com",
			username: "user_#{index}",
			age: 18 + rand(57)
			},
		tweets: [
			"I'm user #{index}",
			"This is my second tweet!"
			]
	})
end
puts "======================\n #{data[1][:user][:username]}'s tweets \n====================== \n"
data[1][:tweets].each do |tweet|
	puts "tweet: " + tweet
end