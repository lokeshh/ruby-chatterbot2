require_relative 'Response.rb'

class ChangeSubjectStrategy < Response
	def apply(input)
		puts @response_list['change subject'].first
		# Rotate the list to choose the least recent response
		@response_list['change subject'].rotate!
	end
end