class Dice
  
  def roll(dice_sides, number_of_dice=1) 
    @max_sides = number_of_dice * dice_sides 
    rand(1..@max_sides)
  end

end
