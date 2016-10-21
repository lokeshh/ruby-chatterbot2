require_relative 'Response.rb'

class MatchStrategy < Response

	def initialize(response_list)
		@response_list = response_list
	end
	
	# Check if any match phrase in the response list
	# matches with the input
	def check?(input)
		@response_list.keys.any? do |to_match|
			words = to_match.split
			words.any? { |word| input.split.include? word }
		end
	end

	def match_score input, response_to_match
		score = 0
		input.split.each do |a|
			response_to_match.split.each do |b|
				score += 1 if a == b
			end
		end
		return score	
	end
	
	# Select the best response
	def apply(input)
		best_match = @response_list.keys.max_by do |to_match|
			match_score input, to_match
		end
		puts @response_list[best_match].first
		# Rotate the list to choose the least recent one
		@response_list[best_match].rotate!
	end
end