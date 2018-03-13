require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Sturgeon")
    @all_the_fish = [@fish1, @fish2, @fish3]

    @river1 = River.new("Amazon", @all_the_fish)
    @river2 = River.new("Yukon", @all_the_fish)
    @river3 = River.new("Nile", @all_the_fish)


  end

  def test_fish_getter()
    assert_equal("Amazon", @river1.name)
    assert_equal("Yukon", @river2.name)
    assert_equal("Nile", @river3.name)
    assert_equal(@all_the_fish, @river1.fish_in_river)
  end



end
