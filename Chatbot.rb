class Chatbot
	def initialize(user)
		@user = user
	end

	def setup
		read_file
		generate_response_list
		initialize_strategies
	end
	
	def generate_response_list
		@response_list = {}
		@file.each_line do |line|
			if line.strip != ''
				to_match, result = line.split(':')
				@response_list[to_match] = result.split(';')
			end
		end
	end

	def initialize_strategies
		@subject_strategy = ChangeSubjectStrategy.new @response_list
		@match_strategy = MatchStrategy.new @response_list
		@question_strategy = EndConversationStrategy.new @response_list
	end

	def enterChat
		@user.add_observer(self)
		startConv
	end

	def startConv
		raise 'abstract method'
	end

	def endConv
		raise 'abstract method'
	end

	def update(input)
		# End conversation if user inputs only 1 word
		if input.split.size == 1
			endConv
			@user.delete_observer(self)
			return
		end
		
		# Check for various strategies and apply them
		if @match_strategy.check?(input)
			@match_strategy.apply(input)
		elsif @question_strategy.check?(input)
			@question_strategy.apply(input)
		else
			@subject_strategy.apply(input)
		end
	end
end