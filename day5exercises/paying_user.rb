require 'date'
require_relative 'standard_user'
require_relative 'bewdencrypter'

class PayingUser < StandardUser
	MAX_LOGINS = 5
	
	def initialize (first_name, last_name, username, email, password)
		super(first_name, last_name, username, email)
		if password == nil 
			puts "ERROR"
		end
		@login_count = 0
		@locked = false
		@password = encrypt_password(password)

	end

	def login(password)
		if check_password(password) == false
			puts "invalid password"
			return false
		else
			puts "Welcome #{@username}!"
			@login_count = @login_count + 1
			if @login_count < MAX_LOGINS
				return true

			else
				return false 
			end
		end
	end

	private

	def encrypt_password(password)
		@salt = Time.now.to_s
		encrypted_password = BewdEncrypter.encryptor("#{password}#{@salt}") #not sure if the syntax here is correct..
	end

	def check_password(password)
		@password == BewdEncrypter.encryptor("#{password}#{@salt}")
	end
end