class Owner

  attr_accessor :name, :pets
  @@all = []

  def initialize(name, pets={fishes: [], cats: [], dogs: []})
    @name = name
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.length
  end
  
end
