class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def say_species
    "I am a #{@species}."
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

  def buy_fish(name)
    self.pets = {fishes: [Fish.new(name)]}
  end

  def buy_cat(name)
    self.pets = {cats: [Cat.new(name)]}
  end

  def buy_dog(name)
    self.pets = {dogs: [Dog.new(name)]}
  end

  def walk_dogs
    self.pets.each do |specie, pet_array|
      pet_array.each {|pet| pet.mood = "happy"} if specie == :dogs
    end
  end

  def play_with_cats
    self.pets.each do |specie, pet_array|
      pet_array.each {|pet| pet.mood = "happy"} if specie == :cats
    end
  end

 def feed_fish
    self.pets.each do |specie, pet_array|
      pet_array.each {|pet| pet.mood = "happy"} if specie == :fishes
    end
  end

  def sell_pets 
    self.pets.each do |specie, pet_array|
      pet_array.each {|pet| pet.mood = "nervous"}
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets 
    self.pets.each do |specie, pet_array|
      num_fish = pet_array.count if specie == :fishes
      num_cats = pet_array.count if specie == :cats 
      num_dogs = pet_array.count if specie == :dogs
    end
    "I have #{num_fish} fish, #{num_dog} dog(s), and #{num_cats} cat(s)."
  end
end