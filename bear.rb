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

  def is_starving
    @stomach.empty?
  end

  # def hunt_for_fish(river)
  #   if river.fish_count == 0
  #     return false
  #   end
  #
  # end

  def digest()
    @stomach.clear
  end

end
