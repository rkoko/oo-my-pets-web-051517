require 'pry'
class Owner
  # code goes here

  @@all=[]

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all<<self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@all.length

  end

  def self.count
    @@all.length
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish_instance = Fish.new(fish_name)
    self.pets[:fishes]<<fish_instance
  end

  def buy_cat(cat_name)
    cat_instance = Cat.new(cat_name)
    self.pets[:cats]<<cat_instance
  end

  def buy_dog(dog_name)
    dog_instance = Dog.new(dog_name)
    self.pets[:dogs]<<dog_instance
  end

  def walk_dogs
    self.pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
    self.pets[:dogs]
  #  binding.pry
  end

  def play_with_cats
    self.pets[:cats].each do |cat_instance|
      cat_instance.mood="happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish_instance|
      fish_instance.mood="happy"
    end
  end

  def sell_pets
    self.pets.each do |species, pet_instances|
      #pet_instances={fishes: [], cats: [], dogs: []}
      pet_instances.each do |pet_instance|
        pet_instance.mood = "nervous"
        pet_instances =@pets = {fishes: [], cats: [], dogs: []}
    end
  end
      #binding.pry
  end

  def list_pets
  #  binding.pry
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
