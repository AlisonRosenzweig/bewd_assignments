# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 tweet_content = ["yay tweets!", "Sample content", "blahblahblah"]
 tweet_handle = ["alison", "andrew", "luna"]

10.times do 
	Tweet.create(content: tweet_content.sample, handle: tweet_handle.sample)
end