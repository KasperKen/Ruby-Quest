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

  # Calls on weapon damage which returns a dice roll
  def attack(enemy)
    dmg = @weapon.damage
    enemy.current_health -= dmg
  end

end
