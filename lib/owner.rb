class Owner

  attr_accessor :name, :pets, :species
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

end
