require_relative 'Chatbot.rb'

class DepressedChatbot < Chatbot

  def read_file
    @file = File.open('chatter_angry.txt')
  end

  def startConv
    puts " Im soo depressed :( "
  end
  
  def endConv
    puts " Bye :( "
  end
end