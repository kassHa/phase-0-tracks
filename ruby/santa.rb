class Santa

	def initialize(gender,ethnicity)  #Initialization with 2 arguments for setting class variables ages and ethinicity 
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0 
		@reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner"]
	end

	def speak #Method for santa to speak
		puts "Ho,ho,ho!Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type) #Method that takes string as argument (type of cookie) and prints string what cookie santa ate
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday  #Method that will increase santa's age by 1 (access internal variable @age)
		@age +=1
	end

	def set_age(new_age) #Method that sets completely new age to santa. Takes integer as argument
		@age = new_age
	end

	def get_mad_at(name_reindeer) #Method that takes name of the reindeer (string) and puts that name in the last position of internal @reindeer_ranking
	    position_in_array = @reindeer_ranking(name_reindeer) #Find current index of the reindeer name
	    last_index_in_array = (@reindeer_ranking.length)-1 #Find the last index in the array. Substracting 1 because arrays are indexed from 0 so last index is actually length of array -1
	    @reindeer_ranking[position_in_array] = @reindeer_ranking[last_index_in_array] #Assign value from the last index in the array, to the position where provided name_reindeer was
	    @reindeer_ranking[last_index_in_array] = name_reindeer # Put provided name_reindeer in the last position in the array
	end

	def print_reindeer_favs #Method that prints reindeer ranking for santa
		puts reinder_ranking
	end

	def gender=(new_gender)	#Method that takes new gender as input (string) and reasigns it to @gender attribute. We can use it simply by name_instance.gender = "new_name"
		@gender = new_gender
	end

	def age #Method that returns age of the santa
		return @age
	end

	def ethnicity #Method that returns ethnicity of the santa
		return @ethnicity
	end

end

#santas = []
#santas << Santa.new("male","white")
#santas << Santa.new("female","black")
#santas << Santa.new("agender","latin")
#santas << Santa.new("male","asian")

#Test new methods to make sure everything works
santa1 = Santa.new("male","white")
puts santa1.age
puts santa1.ethnicity
santa1.celebrate_birthday
puts santa1.age









