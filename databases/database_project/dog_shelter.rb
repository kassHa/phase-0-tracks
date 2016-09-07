require 'sqlite3'

db = SQLite3::Database.new("dogs_inventory.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    breed VARCHAR(255),
    adopted VARCHAR(255)
  )
SQL


db.execute(create_table_cmd)

def add_dogs(db, name, age, breed, adopted)
	db.execute("INSERT INTO dogs (name, age, breed, adopted) VALUES (?, ?, ?, ?)", [name, age, breed, adopted])
end	

def update_dogs(db, name, adopted)
	db.execute("UPDATE dogs SET adopted=? WHERE name=?", [adopted, name])
end	

def read_table(db)
	array = db.execute("SELECT * FROM dogs")
	array.each do |variable|
		puts "Name: #{variable[1]}, Age: #{variable[2]}, Breed: #{variable[3]}, Adopted: #{variable[4]}"
	end	
end

def userInterface()
	puts "1. Add"
	puts "2. Update"
	puts "3. Read"
	puts "4. Quit"
end


userInterface
answer = gets.chomp.to_i

while answer != 4
	if answer == 1
		puts "What is the name of the doggie?"
		name = gets.chomp
		puts "What is the age?"
		age = gets.chomp.to_i
		puts "What is the breed of our new friend?"
		breed = gets.chomp
		add_dogs(db, name, age, breed, "no")
	elsif answer == 2
		puts "What is the name of the dog that has been adopted?"
		name = gets.chomp
		update_dogs(db, name, "yes")
	elsif answer == 3
		puts "Here are all your fourleged friends"
		read_table(db)
	end


	userInterface
	answer = gets.chomp.to_i
end		



















