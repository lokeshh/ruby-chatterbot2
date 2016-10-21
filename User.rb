require "observer"

class User 
	include Observable
    
    def dialog()
        looping = 0
        if(File.exist? ('script.txt'))	#reading script file
            fileObj = File.new("script.txt", "r")
            while (input = fileObj.gets)
                puts(input)
                input = input.downcase
                changed
                notify_observers(input)
            end
            fileObj.close
            else
            while (looping < 1) do
                input = gets.chomp
                changed
                notify_observers(input)
            end
            end
        end

end