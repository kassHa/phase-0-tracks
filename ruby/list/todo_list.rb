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

	def delete_item(item_to_delete)
		@array_Todo.delete(item_to_delete)
	end

	def get_item(index)
		return @array_Todo[index]
	end	

end



