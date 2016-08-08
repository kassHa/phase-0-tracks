name = nil
age = nil
born_year = nil
garlic = nil
insurance = nil
age_correct = nil
results = nil
control = 0
allergies = nil



puts "How many employees do you want to process?"
employees = gets.chomp.to_i

while control < employees do

	puts "what is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	born_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp





	if age == (2016 - born_year) 
		age_correct = true
	else 
		age_correct = false
	end 


	if age_correct == true && (garlic == "yes" || insurance == "yes")
		if name == "Drake Cula" || name == "Tu Fang"
			results = "Defnitely a vampire."
		else
			results = "Probably not a vampire."	
		end
	elsif age_correct == false && (garlic == "no" || insurance == "no")
		if name == "Drake Cula" || name == "Tu Fang"
			results = "Defnitely a vampire."
		else
			results = "Probably a vampire."	
		end
	elsif age_correct == false && garlic == "no" && insurance == "no"
		if name == "Drake Cula" || name == "Tu Fang"
			results = "Defnitely a vampire."
		else
			results = "Almost certainly a vampire."	
		end
	else 
		if name == "Drake Cula" || name == "Tu Fang"
			results = "Defnitely a vampire."
		else
			results = "Results are inconclusive"	
		end
	end

	until allergies == "DONE" 
		puts "What is your allergies, list one at the time. Type DONE when finished"
		allergies = gets.chomp
		if allergies == "sunshine"
			results = "Probably a vampire"
			break
		end	
	end




	puts results 

control = control + 1
end



puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





