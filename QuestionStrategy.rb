require_relative 'Response.rb'

class QuestionStrategy < Response

	def check?(input)
		input[-1] == '?'
	end

	def apply(input)
		puts " Interesting, tell me first what you think " + input
	end
end