class PayingUser < StandardUser

	def initialize (first_name, last_name, username, email, password)
		super(first_name, last_name, username, email)
		if password == nil 
			puts "ERROR"
		end

		@password = encrypt_password(password)

	end
end