class InputForm

    attr_accessor :first_name, :last_name, :username, :email

    def initialize(first_name, last_name, username, email)

        @first_name = first_name 
        @last_name = last_name
        @username = username
        @email = email
        
    end

    def submit(@user, @first_name, @last_name, @username, @email)
    	@user = create_user(@first_name, @last_name, @username, @email)
    end

    def full_name(@user)

    
    private
    
    def create_user(first_name, last_name, username, email)
        User.new(first_name,last_name, username, email)
    end
        
end