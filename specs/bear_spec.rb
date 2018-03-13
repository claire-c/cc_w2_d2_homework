require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", [])
    @bear2 = Bear.new("Grizzly", [])
    @bear3 = Bear.new("Carebear", [])
#I am not convinced about adding in an array for the stomach as an argument. Do I need to do this?
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Sturgeon")
    @all_the_fish = [@fish1, @fish2, @fish3]

    @river = River.new("Yukon", @all_the_fish)
  end

  def test_bear_getter()
    assert_equal("Yogi", @bear1.name)
    assert_equal("Grizzly", @bear2.name)
    assert_equal("Carebear", @bear3.name)
    assert_equal([], @bear1.stomach)
  end

  def test_eat_a_fish()
    result1 = @bear1.eat_a_fish(@fish1)
    assert_equal([@fish1], result1)
    result2 = @bear1.eat_a_fish(@fish2)
    assert_equal([@fish1, @fish2], result2)
    result3 = @bear2.eat_a_fish(@fish3)
    assert_equal([@fish3], result3)
  end

  def test_is_starving__true()
    assert_equal(true, @bear1.is_starving)
  end

  def test_is_starving__false()
    full_bear = @bear1.eat_a_fish(@fish1)
    assert_equal(false, full_bear.empty?)
  end

  # def eat_fish_from_river__no_fish()
  #   @bear1.hunt_for_fish(@river)
  #   result = @bear1
  #   #full_bear = @bear1.eat_a_fish(@fish1)
  #   assert_equal(true, result )#full_bear.empty?)
  # end
# A bear should be able to eat a fish from the river. Bear will have a function hunt_for_fish( River ) which takes a River pbject as an argument. Inside it will check if there is any fish in the river, take the first fish and bear will eat that fish

  def test_digest()
    full_bear = Bear.new("Fatty", [@fish1, @fish2])
    assert_equal([], full_bear.digest)
  end

end
