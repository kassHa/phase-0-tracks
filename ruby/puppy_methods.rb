class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times do
  		puts "Woof!"
  	end
  end

  def roll_over()
  	puts "*rolls over*"
  end

  def dog_year(years)
  	dog_years = years*7
  	return dog_years
  end

  def eat(food)
  	puts "I ate delicious #{food}!"
  end

end

class Car
	
	def initialize
		puts "Creating new instance of a car..."
	end

	def re_paint(color)  #Method takes string argument of the new car color, prints the new color to the screen and also returns the new color
		new_color = color
		puts "Car is now #{new_color}"
		return new_color
	end

	def put_new_rims(size_of_rims) #Method that takes integer argument of the new size of the rims, prints the new size of the rims
		puts "Car is now rolling on #{size_of_rims}'s!!!"
	end

	def brake () #Method does not take any arguments
		puts "Car is braking!"
	end

	def pass_another_car(how_many_cars) #Method takes integer of how many cars to pass
		puts "Car is passing #{how_many_cars} cars"
	end

	def cruise(how_many_miles,how_fast)  #Method takes two integer arguments: how many miles the car should cruise for and how fast. Method prints how many miles and how fast will the car cruise
		puts "Car will cruise for #{how_many_miles} with speed of #{how_fast} mph"
	end

end

baby = Puppy.new
baby.fetch("frog")
baby.speak(5)
baby.roll_over
puts baby.dog_year(2)
baby.eat("beef")


# Loop 50 times to create fifty instances of the Car class and store in the array
array_of_Car_class=[] #Create array to store instances of Car class
i = 0 # create index used to index the array

50.times do
array_of_Car_class[i] =  Car.new  #Assign each instance in each position in the array
i+=1  #Increment index to be able to store each new instance in new position
end


#Loop through the array and call each method of the Car class on each instance
array_of_Car_class.each do |car_instance|
	car_instance.re_paint("blue")
	car_instance.put_new_rims(22)
	car_instance.pass_another_car(3)
	car_instance.brake
	car_instance.cruise(25,50)
end









