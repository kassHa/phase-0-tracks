puts "What's the hamster name?"
name = gets.chomp

puts "How loud is the hamster, from 1-10"
volume = gets.chomp.to_i

puts "What's the fur color"
fur = gets.chomp

puts "Do you think the hamster is good for adoption? (yes/no)"
adoption = gets.chomp	

puts "What is the hamster's age?"
user_answer = gets.chomp.to_i	
age = nil

	if user_answer > 0
		age = user_answer
	else
		age
	end
	
puts "The hamster name is #{name}, it is #{age} years old"

puts "With a #{fur} fur color"

puts "From 1-10 the hamster's volume is #{volume}"

puts "Is the hamster good candidate for adoption: #{adoption}"







 