class CreateCharacter 
 
  attr_accessor :name, :race, :class
  
  def initializer
    self.get_name
    self.get_race
    self.get_class
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

end
