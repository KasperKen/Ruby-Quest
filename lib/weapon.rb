class Weapon

  attr_accessor :name, :damage

  def initialize(name, dmg)
    @name = name
    @damage = dmg
  end

  def damage
    @damage.roll
  end

end
