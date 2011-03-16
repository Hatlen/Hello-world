class Fridge
	def initialize (beverages=[], foods=[])
		@beverages = beverages
		@foods = foods
	end
	def + (item)
		if item.is_a? Beverage
			@beverages.push item
		else
			@foods.push item
		end
	end
	
	def - (item)
		if @beverages.include? item
			@beverages.delete item
		else
			@foods.delete item
		end
	end
end

class Beverage
	def initialize (name)
		@name = name
		@time = Time.now
	end
end

class Food
	def initialize (name)
		@name = name
		@time = Time.now
	end
end
