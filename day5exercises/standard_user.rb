class StandardUser

	attr_accessor :first_name, :last_name, :username, :email

	def initialize (first_name, last_name, username, email)
		@first_name = first_name
		@last_name = last_name
		@username = username
		@email = email
		if first_name == nil || last_name == nil || username == nil || email == nil
			puts "ERROR"
		end
	end

	def full_name
		puts @first_name + " " + @last_name
		returns "#{@first_name} + " " + #{@last_name}"
	end
	
end