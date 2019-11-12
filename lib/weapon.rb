class Weapon
  
  def damage(enemy, dice)
    @dice_sides = @stats[:damage]
    @number_of_dice = @stats[:dice]
    @critical = @stats[:critical]
    
    enemy.take_damage(dice.roll(@dice_sides, @number_of_dice))
  end

end
