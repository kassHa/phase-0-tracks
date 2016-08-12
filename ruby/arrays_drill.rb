# Define a method that takes 3 parameters
# and return an array with those paramethers


def build_array(x, y, z)
	arrays = []
	arrays.push(x, y, z)
end	

# Add a method that takes an array and an item as parameters,
# and returns the array with the item added.

def add_to_array(array, item)
 array << item
end

# Use 'p' to print all of the below:
# Initialize an empty array and store it in a variable
friends = []
p friends

# Add 5 item to the array
friends.push("Sophia", "Kasia" , "Jake", "Kris", "Art")
p friends

# Delete the item at inex 2
friends.delete_at(2)
p friends 

# Insert a new item at index 2
friends.insert(2, "Andy")
p friends

# Remove the first item of the array without having to refer to its index
friends.shift 
p friends

# Ask the array wheter it includes a certain item
if friends.include?("Art")
	puts "includes the name"
else
	puts "doesn't include"
end

# Initialize another array that already has a few items in it
family = ["mom", "dad", "cousins", "siblings"]
p family 

# Add the 2 arrays together
main = friends + family 
p main	

# Method Calls
puts build_array(2, 3, 4)
puts add_to_array(["Sophia", "Kasha", "Jake"], "Art")
puts add_to_array(["test", "this"], "array")






