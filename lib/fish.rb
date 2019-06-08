class Fish
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name = nil)
    @name = name
    @mood = "nervous"
  end 
end