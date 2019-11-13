class Character

  attr_accessor :max_health, :current_health, :inventory, :weapon

  def initialize(name, weapon)
    @name = name
    @max_health = 100
    @current_health = @max_health
    @inventory = []
    @weapon = weapon
    @race = 'Human'
  end

  def class_bonus
    Class.paladin
  end

 # I'm hoping to replace this working method with attr_accessor
 # def add_to_inventory(item, new_ammount)
 #   if @inventory[item]
 #     @inventory[item] += new_ammount
 #   else
 #     @inventory[item] = new_ammount
 #   end
 # end

  def attack(enemy)
    dmg = @weapon.damage
    enemy.current_health -= dmg
  end

end
