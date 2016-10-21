require_relative 'Response.rb'

class MatchStrategy < Response

	def initialize(h, a)
		@hash = h
		@array = a
	end
	
	def applying(input)
		i = 0
		while i < @array.length do
			if (input.match ( @array[i]) )		#checking the input word match or nor
				lastNum = @hash.fetch(@array[i]).length - 1
				num = rand(0...lastNum)
				puts @hash.fetch(@array[i])[num]
				return 0
			end
			i = i + 1
		end
		
	end

	

end