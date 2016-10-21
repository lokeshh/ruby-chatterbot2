class Response
	def initialize response_list
		@response_list = response_list
	end
	
	def check?
		raise 'abstract method'
	end
	
	def apply
		raise "abstract method"
	end
end