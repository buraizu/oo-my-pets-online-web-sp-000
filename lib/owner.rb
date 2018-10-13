class Owner

  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(name, pets={fishes: [], cats: [], dogs: []}, species="human")
    @name = name
    @pets = pets
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

end
