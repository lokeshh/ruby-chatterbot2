require_relative 'Chat.rb'

require "observer"


class DepressedChatbot < Chat
    
    def initialize(nuser, nstr)
        
        nuser.add_observer(self)
        super(nuser,nstr)
    end
    
    def startConv
        puts " Im soo depressed :( "
    end
    
    def endConv
        puts " Bye :( "
    end
    
    def update(input)
        k = 0
        while k < 4 do
            if ( @strategy[k].applying(input) == 0)		#checking every object's applying method then chooses one of them and applying
                break 			# to prevent duplicete messages and other bugs, putting break right there
            end
            k = k + 1
        end
        end


end