# Encrypt method PSEUDOCODE
# Run the loop until the control variable becomes equal to the length of the provided string
# During each iteration of the loop, retrieve a letter from the string that is pointed to by the control variable
# Apply .next method to each letter and reasign changed letter to the same position in the string
# Return changed string



def encrypt(string_to_encrypt) # Create a function accepting string variable as parameter
	control = 0	# Set control variable to 0 
	while control < string_to_encrypt.length # check if the control variable is less than length of the passed string. If yes run the code in the while loop
		if string_to_encrypt[control] == "z" # Because .next that doesn't work well with beginning and ending letters of alphabet check if the current letter is "z" and if so change it to "a" manually
			string_to_encrypt[control] = "a"
		else
			string_to_encrypt[control] = string_to_encrypt[control].next # Retrieve letter from the string that is indexed by control variable, apply .next method to it and reasign to the same place in the string
		end
		control = control + 1 # Upate control variable to move to the next letter
	end
	return_string = string_to_encrypt
	return return_string
end

# Decrypt method PSEUDOCODE
# Create a string that hold entire alphabet in it - variable: alphabet_string
# Create variable to control the while loop - variable: control
# while the control variable is less then the lenght of the string passed to the function
	# Read the letter from the passed string, by indexing the string with control variable and then find the position of this letter in the alphabet string
	# For example if position [0] in passed string has letter "b" then its index in the alphabet will be 1 
	# Change the letter in the passed string indexed by the control variable, to the letter from the alphabet indexed by position in the alphabet -1
	# Upate the control variable so there is no infinite loop
# Return changed string

def decrypt(string_to_decrypt) # Create a function accepting string variable as parameter
	alphabet_string = "abcdefghijklmnoprstuvwxyz" # Create a string variable that hold entire variable
	control = 0	# Create a control variable for the loop
	while control < string_to_decrypt.length # while control variable is less than length of the string do the code in the loop
		position_in_alphabet = alphabet_string.index(string_to_decrypt[control]) # Retrieve letter from string_to_decrypt indexed by value in the control variable, then find which position in the alhpabet this letter is in and assign to a variable to be used later
		string_to_decrypt[control] = alphabet_string[(position_in_alphabet-1)] # Retrieve the letter from the alphabet inexe by position_in_alphabet-1, since we want to grab the previous letter in alphabet
		control = control +1 #Update control variable
	end
	return_string = string_to_decrypt
	return return_string
end


#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish")) # This works because of the way the functions are written; not only the functions encrypts or decrypts the string passes to it, but it also returns created a copy of encrypted or decrypted string. So in this case we first encrypt "swordfish" and return a copy of it being encrypted and then we pass it to decrypt function which decrypts it back

# MAIN PROGRAM PSEUDOCODE
	# Ask user if he wants to encrypt or decrypt the password
	# Ask the user what is the password he wants to encrypt or decrypt
		# if user wants to encrypt run the encrypt method using provided password as parameter
		# else if user want to decrypt run the decrypt method using provided password as parameter

user_choice = ""
user_password = ""



puts "Secret agent would you like to encrypt or decrypt a password?. Type ENCRYPT or DECRYPT" # Ask the user
user_choice = gets.chomp # get the user choice
puts "Secret agent type the password you would like to #{user_choice}" # Ask the user for password
user_password = gets.chomp # get the user password

if user_choice == "ENCRYPT"
	puts encrypt(user_password)
elsif user_choice == "DECRYPT"
	puts decrypt(user_password)
end
	





