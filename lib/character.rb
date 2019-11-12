class Character
  
  def initialize(name)
    @name = name
    @health = 100 
    @inventory = {} 
    @equipped_weapon = 'fists' 
    @race = 'Human' 
  end

  def name
    @name
  end
  
  def add_to_inventory(item, new_ammount)
    if @inventory[item]
      @inventory[item] += new_ammount 

    else
      @inventory[item] = new_ammount
    end
  end
 
  def inventory
   @inventory
  end 
  
  def equip_weapon
    @equipped_weapon = @inventory.key?
  end

  def weapon
    @equipped_weapon
  end

  def attack(enemy)
    @equipped_weapon.damage(enemy, dice) 
  end

  def take_damage(ammount)
    @health -= ammount
  end

end
