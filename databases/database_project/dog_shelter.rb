require 'sqlite3'

db = SQLite3::Database.new("dogs_inventory.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    breed VARCHAR(255),
    adopted BOOLEAN
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
	db.execute("SELECT * FROM dogs")
end















