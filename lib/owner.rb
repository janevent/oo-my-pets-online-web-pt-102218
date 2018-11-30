class Owner
  attr_accessor :pets, :name
  attr_reader :species
  def initialize(pets) 
    @pets = pets
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    
  end
  
  @@all = [] 
  
  def self.all 
    @@all 
  end
   
  def self.count 
    self.all.count 
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def species 
    @species = "human"
  end
  
  def say_species 
    "I am a human."
  end
  
  def buy_fish(name) 
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
end