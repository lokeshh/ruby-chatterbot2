require_relative 'Chatbot.rb'

class AngryChatbot < Chatbot
  def startConv
      puts " HELLO :@ "
  end
  
  def endConv
      puts " BYE :@ "
  end
  
  def read_file
    @file = File.open('chatter_angry.txt')
  end
end
