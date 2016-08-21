# Class: Computer
# Atrributes:
# name - string
# type - string
# turned_on - boolean
# operating_system - string
# Methods:
# initialize(type,computer_name)
# change_operating_system - for installing new operating system
# turn_on  - for turning on the computer
# turn_off - for turning the computer off
# type - for returning computer type
# name - for changing the name and also returning name of the computer


class Computer

	attr_reader :turned_on,:operating_system,:type
	attr_accessor :name

	def initialize(computer_type,computer_name) # initialize new computer instance with computer type and computer name (strings)
		@type = computer_type #Change class variable type based on user input
		@name = computer_name #Change class variable name based on user input
		@operating_system = "Windows"   # Default operating system is Windows
		@turned_on = false # By default computer is off
	end

	def turn_on # Turn the computer on
		@turned_on = true
	end
	
	def turn_off # Turn the computer off
		@turned_on = false
	end

	def change_operating_system(new_operating_system) # Change operating system takes string as an input and assigns it to class variable
		@operating_system = (new_operating_system)
	end 

end



#User interface
array_computer_instances = [] # for storing multiple computer instances


puts "Would you like to add a new computer?If yes enter any button, to stop type done"

user_answer = gets.chomp.downcase

while user_answer!="done"
	puts "What is the type of your computer?"
	computer_type = gets.chomp
	puts "What is your computer's name?"
	computer_name = gets.chomp
	new_computer_instance = Computer.new(computer_type,computer_name)
	puts "Computer is currently off, would you like to turn it on? Type yes or no"
	user_answer_on_off = gets.chomp
	if user_answer_on_off == "yes"
		new_computer_instance.turn_on
	end
	puts "Would you like to change operating system?Default is Windows"
	puts "If you want to change type the name of the new operating system, otherwise type no"
	user_answer_os = gets.chomp
	if user_answer_os != "no"
		new_computer_instance.change_operating_system(user_answer_os)
	end
	puts "If you turned the computer on previously, do you want to turn it off now?Type yes or no"
	user_answer_on_off = gets.chomp
	if user_answer_on_off == "yes"
		new_computer_instance.turn_off
	end

	array_computer_instances << new_computer_instance # Add set computer instance to computer instance array
	puts "Would you like to add a new computer?If yes enter any button, to stop type done"
	user_answer = gets.chomp.downcase
end










