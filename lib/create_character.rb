class CreateCharacter 
 
  attr_accessor :name, :race, :class
  
  def initializer
    self.get_name
    self.get_race
    self.get_class
    #Im still trying to figure out how to
    #create an object from the character class
    #whithin a method from this instance
    Character.new(@name, @race, @class)
  end

  def get_name 
    puts 'What is your name?'
    self.name = gets.chomp
  end

  def get_race
    puts 'what is your race?' 
    self.race = gets.chomp 
  end

  def get_class
    puts 'what is your class?'
    self.class = gets.chomp
  end
  
  def self.roll_stats
    @initial_stats = {
      :hp => 100,
      :str => Dice.stat_roll,
      :dex => Dice.stat_roll,
      :con => Dice.stat_roll,
      :wis => Dice.stat_roll,
      :int => Dice.stat_roll,
      :cha => Dice.stat_roll
    }
  end

 # def add_class_stat_bonus
 #   self.initial_stats.map {|stat}  
 # end

end
