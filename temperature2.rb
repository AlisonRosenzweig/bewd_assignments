print "=============================== \n Welcome to Ruby Weather Center \n Written by Alison Rosenzweig \n=============================== \n"

print "Celsius? (true or false)  "

celsius_flag = gets.chomp

print "What is today\'s temperature\? "
if celsius_flag == "true"
	todays_temperature_c = gets.chomp.to_i
	todays_temperature_f = todays_temperature_c*1.8+32
elsif celsius_flag == "false"
	todays_temperature_f = gets.chomp.to_i
end

if todays_temperature_f < 0
	our_thoughts = "It\'s too cold!"
elsif todays_temperature_f < 15
	our_thoughts = "Still pretty f\'ing cold!"

elsif todays_temperature_f < 30 
	our_thoughts = "Still below freezing...bundle up!"

elsif todays_temperature_f < 45
	our_thoughts = "Still cold but at least there\'s no ice!"

elsif todays_temperature_f < 60
	our_thoughts = "Sweater weather!"

elsif todays_temperature_f <75
	our_thoughts = "Getting warmer..."

elsif todays_temperature_f < 90
	our_thoughts = "It\'s finally summer!"

elsif todays_temperature_f >=90
	our_thoughts = "Ut oh...now it's too hot\; remember sunscreen!"

end

if celsius_flag == "false"
	puts response = "Hello the temperature is #{todays_temperature_f}°F.  " + "\n Our thoughts: #{our_thoughts}"
elsif celsius_flag == "true"
	puts response = "Hello the temperature is #{todays_temperature_c}°C.  " + "\n Our thoughts #{our_thoughts}"
end
