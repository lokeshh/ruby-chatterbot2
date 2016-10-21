require "observer"

class User 
  include Observable
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def response
    input = gets.chomp
    changed
    notify_observers(input)
  end
end