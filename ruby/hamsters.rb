puts "What's the hampster name?"
name = gets.chomp

puts "How loud is the hampsted, from 1-10"
volume = gets.chomp.to_i

puts "What's the fur color"
fur = gets.chomp

puts "Do you think the hampster is good for adoption? (yes/no)"
adoption = gets.chomp	

puts "What is the hampster's age?"
user_answer = gets.chomp.to_i	
age = nil

	if user_answer > 0
		age = user_answer
	else
		age
	end
	
puts "The hampster name is #{name}, it is #{age} years old"

puts "With a #{fur} fur color"

puts "From 1-10 the hampster's volume is #{volume}"

puts "Is the hampster good candidate for adoption: #{adoption}"







 