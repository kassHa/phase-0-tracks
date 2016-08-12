# First create a hash
# Ask user for the input
# Convert input to appropriate data type (integers, booleans)
# When application is finished, print it to the screen
# Use the if statement to find out if the user made a mistake, and wants to update it.
# If user wants to update the input, and ask which label/key needs to be updated.
# Ask the user to type a new value
# Print hash to the screen 



user_input = {}
user_input[:name] = ""
user_input[:age] = ""
user_input[:number_of_children] = ""
user_input[:decor_theme] = ""
user_input[:likes_pink] = ""


puts "Whats is the customer's name?"
user_input[:name] = gets.chomp
puts "What is the customer's age?"
user_input[:age] = gets.chomp.to_i
puts "How many children does the customer have?"
user_input[:number_of_children] = gets.chomp.to_i
puts "What is customer's decor theme?"
user_input[:decor_theme] = gets.chomp
puts "Does the client like a pink color? (Please type yes/no)"
user_input[:likes_pink] = gets.chomp

puts user_input

puts "Did you want to change any of your answers? (type none if not)"
if gets.chomp == "none"
	puts user_input
else
	puts "Which key did you want to change? (name,age,number_of_children,decor_theme or likes_pink)"
	user_answer = gets.chomp.to_sym
		if user_answer  == :age || user_answer == :number_of_children
			puts "What is the new value?"
			value = gets.chomp.to_i
			user_input[user_answer] = value
		else
			puts "What is the new value?"
			value = gets.chomp
			user_input[user_answer] = value	
		end		
end	


puts user_input





