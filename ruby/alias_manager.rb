def created_spy_name(name)
name_reverse = name.split.reverse.join(" ") 

spy_name = name_reverse.split("")


spy_name.map! do |letter|
	if letter == "a"
		letter = "e"
	elsif letter == "e"
		letter = "i"
	elsif letter == "i"
		letter = "o"
	elsif letter == "o"
		letter = "u"
	elsif letter == "u"
		letter = "a"
	elsif letter == " "
		letter = " "
	else 
		letter = letter.next
	end
end

spy_name = spy_name.join("")
end

stored_spy_names = []
i = 0 

puts "Whats is your name?"
name1 = gets.chomp 

while name1.downcase != "quit"
	stored_spy_names[i] = created_spy_name(name1)
	i += 1 
	puts "enter another name or type quit when you want to exit"
	name1 = gets.chomp 
end	

p stored_spy_names



 
