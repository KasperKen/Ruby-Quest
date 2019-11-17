class Dice
  
  @@list = []

  def initialize(dice_sides, dice_ammount=1) 
    @sides = dice_sides 
    @ammount = dice_ammount
    @name = "#{dice_ammount}d#{dice_sides}" #ex. '2d4'
    @@list << self
  end
   
  def self.list #lists all instances of Dice class.
    @@list
  end

  def roll
    total = @ammount * @sides 
    rand(1..total)
  end

  def self.stat_roll
    roll4d6 = [rand(1..6), rand(1..6),  rand(1..6), rand(1..6)]
    roll4d6.sum - roll4d6.min # Discard lowest roll
  end

end
