require 'pry'

class Paladin < Human
  
  def initialize(name)
    @health = 100
    @weapons = {}
    @name = name
    @stamina = 100
  end

  def health
    @health
  end
  
  def add_weapon(weapon, category) 
      @weapons[category] = weapon
  end

  def weapons
    @weapons
  end
  
  def attack(person, ammount=5)
    person.damage(ammount)
    @stamina -= ammount * 2
  end 

  def damage(ammount)
    @health -= ammount
  end

end

binding.pry
