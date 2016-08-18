highway = {
	cars: {
		passenger_car: {
			make: "honda",
			color: "black",
			number_of_passengers: 2
		},
		suv_car: {
			make: "audi",
			color: "white",
			number_of_passengers: 5
			},
		convertible: {
			make: "ford",
			color: "red",
			number_of_passengers: 1
		}
	},
	trucks:{
		semi_truck: {
			make: "international",
			color: "blue",
			trailer_length: 54
			},
		delivery_truck: {
			make: "volvo",
			color: "yellow",
			delivery_type: "furniture"
		}
	},
	lanes: [1, 2, "carpoll", "express line"]
}
 
#puts highway 
puts highway[:cars][:passenger_car][:color]

puts highway[:lanes][2]

puts highway[:cars][:suv_car][:color]
highway[:cars][:suv_car][:color] = "red"
puts highway[:cars][:suv_car][:color]

puts highway[:trucks][:semi_truck][:make]
highway[:trucks][:semi_truck][:make].upcase!
puts highway[:trucks][:semi_truck][:make]

highway[:trucks][:semi_truck].each {|key,value| puts value } 















