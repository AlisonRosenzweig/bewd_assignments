#problem 1
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
#problem 2
puts "======================\n #{data[1][:user][:username]}'s tweets \n====================== \n"
data[1][:tweets].each {|tweet|
    puts "tweet: " + tweet}
#problem 3
data.reverse!
#problem 4

index = data.find_index{|x| x[:user][:id] == 2}
puts "User 2 was found at index #{index}"
#problem 5
young_adult = []
data.each { |user_hash|

    age = user_hash[:user][:age]

    if age >= 18 && age <= 25

    young_adult.push(user_hash)

    end

}
puts "username\tage"
young_adult.each {|user|  puts "#{user[:user][:username]}   \t #{user[:user][:age]}"}
