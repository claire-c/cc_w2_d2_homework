class Bear

  attr_reader :name
  attr_accessor :stomach

  def initialize(name, stomach = [])
    @name = name
    @stomach = stomach
  end

  def eat_a_fish(fish)
    @stomach << fish
  end

  def is_starving?
    @stomach.empty?
  end

  def fish_in_stomach()
    @stomach.count()
  end

  def hunt_for_fish(river)
    if river.fish_count != 0
      for fish in river.fish_in_river
        @stomach << fish
        river.remove_a_fish
        break
      end
    end
  end

  # def hunt_for_many_fish(river, number_fish_in_river)
  #   #if number_fish_in_river != 0
  #     for fish in river.fish_in_river
  #       @stomach << fish
  #
  #       # p "STOMACH.....     "
  #       # p @stomach
  #       # p "and then"
  #       # p "RIVER........     "
  #       # p river
  #     end
  #     for fish in river.fish_in_river
  #       river.remove_a_fish
  #     end
  #   #end
  # end










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
