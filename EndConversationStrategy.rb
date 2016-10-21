require_relative 'Response.rb'

class EndConversationStrategy < Response

	def applying(input)
		if !( input.include? (" ") ) #checking there is a space or not. If there is a space, that means the input are not one word.
				puts " Bye"
				exit
		end
	end

	

end