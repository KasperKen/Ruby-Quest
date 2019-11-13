class Dice
   
  def initialize(dice_sides, dice_ammount=1) 
    @sides = dice_sides 
    @ammount = dice_ammount
  end
     
  def roll
    total = @ammount * @sides 
    rand(1..total)
  end

end
