require './paying_user'

class InputForm

    attr_accessor :first_name, :last_name, :username, :email, :password

    def initialize(first_name, last_name, username, email, password)

        @first_name = first_name 
        @last_name = last_name
        @username = username
        @email = email
        @password = password
        puts "Account created successfully"
    end

    def submit
    	@user = create_paying_user(@first_name, @last_name, @username, @email, @password)
    end

    def full_name
        "#{@first_name} #{@last_name}"
    end

    private
    
    def create_paying_user(first_name, last_name, username, email, password)
        PayingUser.new(first_name,last_name, username, email, password)
    end
        
end