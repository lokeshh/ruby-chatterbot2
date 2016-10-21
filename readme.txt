Implementation of Observer Pattern-

1. Observer pattern is used to observe when the user types a resonse
2. #add_observer is used to add bots as the observer
3. #notify_observers is used to notify bots that user has entered resonse
4. #update is used by bots to generate a response by bot


Implementation of Template Pattern:

1. Chatbot genearlizes the basic steps in the #setup method
2. The inherited bots implements #read_file
3. Similarly #enterChat method generalizes the steps to enter
   bot in the conversation and #greeting is implemented by inheriting
   bots
   
Implementation of Strategy Pattern:

1. Change subject, match response, and delection are implemented as
   strategies.
2. Which strategy to use is decided by the bot at runtime.