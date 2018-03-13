class Bear

  attr_reader :name
  attr_accessor :stomach

  def initialize(name)#, stomach)
    @name = name
    @stomach = []
  end

  def eat_a_fish(fish)
    @stomach << fish
  end

end
