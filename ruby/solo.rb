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






