require "observer"

class User 
  include Observable
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def converse
    input = gets.chomp
    changed
    notify_observers(input)
  end
end