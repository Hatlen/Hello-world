class Club
	def initialize
		@members = {}
	end
	
	def [] (role)
		@members[role]
	end

	def []= (role, person)
		if @members[role].nil?
			@members[role] = person
		elsif @members[role].is_a? String
			@members[role] = [ @members[role], person]
		else
			@members[role].push person
		end
	end
end
