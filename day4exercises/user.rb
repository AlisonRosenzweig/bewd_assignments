class User 
	MAX_LOGINS = 5

	attr_accessor :first_name, :last_name, :username, :email

	def initialize(first_name, last_name, username, email)
		if first_name == nil || last_name == nil || username == nil || email == nil
			puts "ERROR"
		end
		@first_name = first_name
		@last_name = last_name
		@username = username
		@email = email
		@login_count = 0
		@locked = false
		
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
end

