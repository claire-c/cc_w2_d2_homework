class River

attr_reader :name
attr_accessor :fish_in_river

def initialize(name, fish_in_river)
  @name = name
  @fish_in_river = fish_in_river
end

def fish_count()
  @fish_in_river.count()
end





end
