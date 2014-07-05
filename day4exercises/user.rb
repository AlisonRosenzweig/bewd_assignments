class User 
	MAX_LOGINS = 5

	attr_accessor :first_name, :last_name, :username, :email

	def initialize(first_name, last_name, username, email)
		#if first_name == nil || last_name == nil || username == nil || email == nil
			#puts "ERROR"
		#^this is the original
		#if first_name.is_a?(String) == false || last_name.is_a?(String) == false || username.is_a?(String) == false || email.is_a?(String) == false
			#puts "ERROR"
		#end
		#^This is extra credit 1
		#below is extra credit 2
		if [first_name, last_name, username, email].all? { |user_info| is_string?(user_info)} == false
			puts "ERROR.  One of the arguments is either blank or in an incorrect format - please correct."
		end
		@first_name = first_name
		@last_name = last_name
		@username = username
		@email = email
		@login_count = 0
		@locked = false
		#I tried putting this in an else statement to make it only create the user if they filled 
		#it out correctly but it looks like it just creates a blank user... 
		#I'm thinking the way to do that would be to validate it in a separate method and then if it 
		#is successful, call the initialize method but I may be wrong
		
	end

	def full_name
		puts @first_name + " " + @last_name
	end

	def login

		@login_count = @login_count + 1
		if @login_count < MAX_LOGINS
			return true
		else
			return false 
		end
	end

	if @login_count == false
		@locked = true
		puts "Access denied!"
	end
	private
	def is_string?(possiblestring) #for extra credit 2
		possiblestring.is_a?(String)
	end
end

