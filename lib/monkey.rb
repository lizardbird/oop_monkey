class Monkey
  attr_accessor :name, :species, :foods_eaten
  def initialize (name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    vowels = ['a', 'e', 'i', 'o', 'u']
    @foods_eaten.push(food) unless vowels.include?food[0].downcase
  end

  def introduce
    foods = @foods_eaten.join(", ")
    return "Hi, I'm #{@name}. I am a #{@species} and I've eaten #{foods}"
  end
end
