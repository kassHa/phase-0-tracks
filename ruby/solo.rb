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

user_answer_main = gets.chomp.downcase

while user_answer_main!="done"
	puts "What is the type of your computer?"
	computer_type = gets.chomp
	puts "What is your computer's name?"
	computer_name = gets.chomp
	new_computer_instance = Computer.new(computer_type,computer_name)
	puts "Computer is currently off, would you like to turn it on? Type yes or no"
	user_answer = gets.chomp
	if user_answer == "yes"
		new_computer_instance.turn_on
	end
	puts "Would you like to change operating system?Default is Windows"
	puts "If you want to change the operating system type the name of the new operating system, otherwise type no"
	user_answer = gets.chomp
	if user_answer != "no"
		new_computer_instance.change_operating_system(user_answer)
	end
	
	puts "Your computer is currently called #{new_computer_instance.name}"
	puts "If you like to change the name, simply type the new name, if you don't want to change the name type no"
	user_answer = gets.chomp
	if user_answer != "no"
		new_computer_instance.name = user_answer
	end

	puts "If you turned the computer on previously, do you want to turn it off now?Type yes or no"
	user_answer= gets.chomp
	if user_answer == "yes"
		new_computer_instance.turn_off
	end

	array_computer_instances << new_computer_instance # Add set computer instance to computer instance array
	puts "Would you like to add a new computer?If yes enter any button, to stop type done"
	user_answer_main = gets.chomp.downcase
end

i = 1 # for indexing computers
# Print atrributes of each computer instances

array_computer_instances.each do |computer_instance|
	puts "Computer#{i}"
	puts "Computer type:#{computer_instance.type}" #print computer instance type
	puts "Computer name:#{computer_instance.name}" #print computer instance name
	puts "Installed operating system:#{computer_instance.operating_system}" #print computer instance operating system
	puts "Computer on?:#{computer_instance.turned_on}" #print if computer instance is on or off

	i+= 1 # Update index
end









