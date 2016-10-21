class HappyChatbot < Chat
  def get_file_name
    @file = 'chatter_angry.txt'
  end
  
  def startConv
    puts " Hiii , i'm so happy!"
  end
  
  def endConv
    puts " Byeeee!"
  end
end
