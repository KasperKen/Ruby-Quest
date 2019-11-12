class Character
  
  def initialize(name)
    @name = name
    @max_health = 100
    @current_health = @max_health 
    @inventory = [] 
    @equipped_weapon = 'fists' 
    @race = 'Human' 
  end
  
  attr_accessor :max_health, :current_health, :inventory, :equipped_weapon
 

 # I'm hoping to replace this working method with attr_accessor 
 # def add_to_inventory(item, new_ammount)
 #   if @inventory[item]
 #     @inventory[item] += new_ammount 
 #   else
 #     @inventory[item] = new_ammount
 #   end
 # end
 
  def attack(enemy)
    @equipped_weapon.attack(enemy) 
  end

end
