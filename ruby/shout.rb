module Shout 
	
	def self.yell_angrily(words)
		return (words+"!!!" + " :(")
	end

	def self.yell_happily(words)
		return (words+"!!!" + " :)")
	end

end

puts Shout.yell_happily("kassHa")
puts Shout.yell_angrily("kassHa")