class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end

  def pets 
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all 
    @@all 
  end 

  def self.count 
    self.all.count
  end

  def self.reset_all 
    @@all = [] 
  end 

  def buy_fish
    self.pets << :fishes => Fish.new()
  end

  def buy_cat(name)
    self.pets[cats] << Cat.new()
  end

  def buy_dog(name)
    self.pets[dogs] << Dog.new()
  end

  def walk_dogs
    self.pets[dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[cats].each do |cat|
      cat.mood = "happy"
    end
  end

 def feed_fish
    self.pets[fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets 
    self.pets.each do |species_key|
      species_key.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets 
    self.pets.each do |species_key|
      puts "#{species_key}:"
      species_key.each do |pet|
        puts pet.name
      end
    end
  end
end