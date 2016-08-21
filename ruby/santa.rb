class Santa

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0 
		@reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner"]
	end

	def speak
		puts "Ho,ho,ho!Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end


santas = []
santas << Santa.new("male","white")
santas << Santa.new("female","black")
santas << Santa.new("agender","latin")
santas << Santa.new("male","asian")

