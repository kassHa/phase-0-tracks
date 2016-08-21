class TodoList
	
	def initialize(array_item)
		@array_Todo = array_item		
	end

	def get_items
		return @array_Todo
	end

	def add_item(item_to_add)
		@array_Todo << item_to_add
	end

end


