require_relative 'User.rb'
require_relative 'DepressedChatbot.rb'
require_relative 'HappyChatbot.rb'
require_relative 'AngryChatbot.rb'

def main()

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
end

main()
