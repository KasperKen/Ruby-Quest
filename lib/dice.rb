class Dice
  
  def roll(number_of_dice) 
    @max_sides = number_of_dice * @sides
    rand(1..@max_sides)
  end

end
