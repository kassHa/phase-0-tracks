
#Standalone module Shout
=begin
module Shout 
	
	def self.yell_angrily(words)
		return (words+"!!!" + " :(")
	end

	def self.yell_happily(words)
		return (words+"!!!" + " :)")
	end

end
=end

#Mixin module Shout
module Shout 
	
	def yell_angrily(words)
		return (words+"!!!" + " :(")
	end

	def yell_happily(words)
		return (words+"!!!" + " :)")
	end

end

class Husband
	include Shout
end

class Wife
	include Shout
end

husband = Husband.new
wifey = Wife.new


puts husband.yell_happily("Babes")
puts husband.yell_angrily("Babes")
puts wifey.yell_angrily("Honey")
puts wifey.yell_happily("Honey")

