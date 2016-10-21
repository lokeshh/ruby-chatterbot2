class Chat
	def initialize(nuser, nstr)
		@user = nuser
		@strategy = nstr

		startConv 	#start conversation
        @user.dialog() #function call of user to keep the conversation
		endConv		#end conversation
	end

	def startConv
		raise "abstract method"
	end

	def endConv
		raise "abstract method"
	end
end