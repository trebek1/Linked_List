class Node 

	attr_accessor :value, :previous, :rest  

	def initialize(value)
		@value = value 
		@previous = nil
		@rest = nil
	end 
end

class DoublyLinkedList

		def initialize 
			@node = Node.new(nil)
		end 

		def add_node(value)
			new_node = Node.new(value)
			new_node.rest = @node 
			@node.previous = new_node
			@node = new_node 
		end

		def first 
			@node.value
		end 

		def rest 
			@node.rest 
		end 

		def rest! 
			@node = @node.rest 
		end 
end 

