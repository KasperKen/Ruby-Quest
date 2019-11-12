class Weapon

  def damage(enemy)
    
    enemy.take_damage($dice.roll(@damage, @dice))
  end

end
