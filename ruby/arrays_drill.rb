
def build_array(x, y, z)
	arrays = []
	arrays.push(x, y, z)
end	

#def ad_to_array(par1, par2)
	#variable = par1
	#variable << par2
	#p variable
#end

#puts ad_to_array([1, 2, 3], 4)	



def add_to_array(par1, par2)
 array = par1
 array << par2
 p array
end




friends = []
p friends

friends.push("Sophia", "Kasia" , "Jake", "Kris", "Art")
p friends

friends.delete_at(2)
p friends 

friends.insert(2, "Andy")
p friends

friends.shift 
p friends

if friends.include?("Art")
	puts "includes the name"
else
	puts "doesn't include"
end

family = ["mom", "dad", "cousins", "siblings"]
p family 

main = friends + family 
p main	


puts build_array(2, 3, 4)
puts add_to_array(["Sophia", "Kasha", "Jake"], "Art")






