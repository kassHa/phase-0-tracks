
# Write a method that takes block, with some paramiters 
def person
	puts "Hi there"
	yield("Kasia", 26)
end

person { |name, age| puts "Hi, #{name}, today you are #{age}"}

# Create an array, and a hash
groceries = ["salad", "carrots", "nuts"]
p groceries
groceries.delete_at(1)
p groceries

groceries_cost = {"chocolate" => 1.99, "milk" => 4.99, "shampoo" => 5.99}
p groceries_cost




# Used .each method on the array and hash
groceries.each do |item|
	puts item
end	

groceries_cost.each do |item, cost|
	puts "The price of this #{item}, is #{cost}"
end	

groceries.map! do |item|
	 item.upcase
end

p groceries 
p groceries_cost


#Iterate trough items, and delete ones that match the condition
#Array
lucky_numbers = [3, 6, 9, 7, 13]
p lucky_numbers
lucky_numbers.delete_if { |numbers| numbers < 7 }
p lucky_numbers 

#Hash
animals = {"name" => "Cosmo", "age" => 10 }
p animals
animals.delete_if { |key, value| value != 10 }
p animals


#Iterate trough items, and then filter ones that match the condition
numbers = [15, 18, 1, 65, 42]
p numbers
filtered_numbers = numbers.select { |my_numbers| my_numbers >= 20 }
p filtered_numbers 

#Hash
h = {"a" => 200, "b" => 300, "c" => 400}
p h
h.select! { |key, value| value > 300 }
p h



#A different method that filters a data structure for only items satisfying a certain condition
house = ["living_room", "kitchen", "bathroom", "bedroom"]
p house
house.reject! { |studio| studio == "bedroom"}
p house 


my_hash = {"a" => 1000, "b" => 2000, "c" => 3000}
p my_hash
my_hash.reject! { |key, value| key != "c"}
p my_hash




#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
letters = ["A", "B", "C", "D", "E", "F" ]
p letters
other_letters = letters.drop_while { |new_letters| new_letters != "E"}
p other_letters












