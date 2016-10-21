require_relative 'Response.rb'

class ChangeSubjectStrategy < Response
	def check?
		
	end

	def apply(input)
		i = 0
		while i < @array.length do
			if !(input.match ( @array[i]) )		#checking the input word match or nor
				lastNum = @hash.fetch("change subject").length - 1
				num = rand(0...lastNum)
				puts @hash.fetch("change subject")[num]
				return 0
			end
			i = i + 1
		end
		
	end

end