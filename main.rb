require_relative 'User.rb'
require_relative 'DepressedChatbot.rb'
require_relative 'HappyChatbot.rb'
require_relative 'AngryChatbot.rb'
require_relative 'Chatbot.rb'
require_relative 'Chat.rb'
require_relative 'Response.rb'
require_relative 'MatchStrategy.rb'
require_relative 'QuestionStrategy.rb'
require_relative 'ChangeSubjectStrategy.rb'
require_relative 'EndConversationStrategy.rb'

def main()
    fileObj = File.new("chat.txt", "w")

	puts("\nPlease enter your name: ")
    #name = gets().chomp()
	user = User.new("Steven")
	bots = []
	bots << HappyChatbot.new()
	bots << AngryChatbot.new()
	bots << DepressedChatbot.new()

	bots.each { |b|
		b.enterChat(user)
	}
	while user.count_observers > 0
		user.converse
	end
    fileObj.close
end

main()
