class Response
	def initialize
		raise 'not to be initialized'
	end
	
	def check?
		raise 'abstract method'
	end
	
	def apply
		raise "abstract method"
	end
end