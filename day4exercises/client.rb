require_relative 'input_form'

	user = InputForm.new("Alison", "Rosenzweig", "ahr", "email")
	user.submit
	puts "The user's full name is #{user.full_name}"

