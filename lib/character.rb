class Character

  attr_accessor :name, :stats, :inventory, :weapon

  def initialize(name, weapon)
    @name = name
    @max_health = 100
    @stats = self.inital_stats 
    @inventory = {}
    @weapon = weapon
    @race = 'Human'
  end

  def inital_stats
    @stats = CreateCharacter.roll_stats 
  end

  def add_item(item, count = 1)
    if @inventory.include?(item)
      @inventory[item] += count
    else
      @inventory[item] = count
    end
  end

  def use_item(item, count = 1)
    if @inventory[item] == 0
      puts "#{self.name} doesn't have any more #{item.name}"
    else
      self.stats[item.stat] += item.use
      @inventory[item] -= count
    end
  end

  # Calls on weapon damage which returns a dice roll
  def attack(enemy)
    dmg = @weapon.damage
    enemy.stats[:hp] -= dmg
  end

end
