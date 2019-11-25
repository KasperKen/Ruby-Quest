class Character

  attr_accessor :name, :stats, :inventory, :weapon
  attr_reader :race, :klass

  def initialize(name, weapon)
    @name = name
    @race = 'Human'
    @klass = 'Paladin'
    @max_health = 100
    @stats = roll_stats
    @inventory = {}
    @weapon = weapon
  end

  def roll_stats
    {
      :hp => 100,
      :str => Dice.stat_roll,
      :dex => Dice.stat_roll,
      :con => Dice.stat_roll,
      :wis => Dice.stat_roll,
      :int => Dice.stat_roll,
      :cha => Dice.stat_roll,
      :modifier => 1, # Place holder so game won't break. Eventually will be set by Character's Klass
      :ac => 1 # Will also be some math based off DEX/CON + equipment. According to Klass specs
    }
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
    
    self_check = _1d20.roll + stat[:modifier]
    enemy_check = _1d20.roll + enemy.stat[:ac]
    
    if self_check > enemy_check
      dmg = @weapon.damage
        if self_check == 20 + stat[:modifier] # Critical. Total needed for a natural 20
          dmg *= 2 # Double dmg
          puts "CRITICAL HIT!!"
        end
      enemy.current_health -= dmg
      puts "#{self.name} hit #{enemy.name} for #{dmg}!"
    else
      puts "#{self.name} missed!"
    end

  end
end
