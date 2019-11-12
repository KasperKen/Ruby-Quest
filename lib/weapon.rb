class Weapon
  
  def attack(enemy)
    enemy.current_health -= ($dice.roll(@damage, @dice))
  end

  attr_accessor :dice, :damage, :critical, :weapon_type, :weight

end
