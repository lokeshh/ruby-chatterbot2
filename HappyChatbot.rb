require_relative 'Chatbot.rb'

class HappyChatbot < Chatbot
  def read_file
    @file = File.open('chatter_happy.txt')
  end
  
  def startConv
    puts " Hiii , i'm so happy!"
  end
  
  def endConv
    puts " Byeeee!"
  end
end
