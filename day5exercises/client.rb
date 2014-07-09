require_relative 'input_form'

	puts "Please create a new account by providing the following information..."
	puts "First name:"
	first_name = gets.chomp
	puts "Last name:"
	last_name = gets.chomp
	puts "Username:"
	username = gets.chomp
	puts "Email:"
	email = gets.chomp
	puts "Password:"
	password = gets.chomp

	user = InputForm.new(first_name, last_name, username, email, password)
	paying_user_alison = user.submit
	puts "Password:"
	potential_password = gets.chomp.to_s

	paying_user_alison.login(potential_password)


	#I was having trouble getting this to work.  I was getting an error message relating to the 
	#login method, which is why I make the paying_user_alison an instance variable, but I'm 
	#not honestly sure why that worked... 