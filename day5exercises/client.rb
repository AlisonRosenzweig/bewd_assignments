require './input_form'

	user = InputForm.new("Alison", "Rosenzweig", "ahr", "arosenz1@swarthmore.edu", "password")
	@paying_user_alison = user.submit
	puts "Password:"
	potential_password = gets.chomp.to_s
	
	@paying_user_alison.login(potential_password)


	#I was having trouble getting this to work.  I was getting an error message relating to the 
	#login method, which is why I make the paying_user_alison an instance variable, but I'm 
	#not honestly sure why that worked... 