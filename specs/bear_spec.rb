require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup

#I am not convinced about adding in an array for the stomach as an argument. Do I need to do this?
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Sturgeon")
    @all_the_fish = [@fish1, @fish2, @fish3]

    @bear1 = Bear.new("Yogi")
    @bear2 = Bear.new("Grizzly")
    @bear3 = Bear.new("Carebear", @all_the_fish)


    @river = River.new("Yukon", @all_the_fish)
  end

  def test_bear_getter()
    assert_equal("Yogi", @bear1.name)
    assert_equal("Grizzly", @bear2.name)
    assert_equal("Carebear", @bear3.name)
    assert_equal([], @bear1.stomach)
  end

  def test_eat_a_fish()
    @bear1.eat_a_fish(@fish1)
    assert_equal(1, @bear1.stomach.count)

  end

#test for this by counting the length of the stomach array - testing for eat_a_fish @bear.stomach.length()

  def test_is_starving__true()
    assert_equal(true, @bear1.is_starving?)
  end

  def test_is_starving__false()
    assert_equal(false, @bear3.is_starving?)
  end

  def test_hunt_for_fish__fish_in_river()
    @bear1.hunt_for_fish(@river)
    assert_equal(1, @bear1.stomach.count)
  end

  def test_hunt_for_fish__no_fish()
    empty_river = River.new("Polluted", [])
    @bear1.hunt_for_fish(empty_river)
    assert_equal(0, @bear1.stomach.count)
  end


# A bear should be able to eat a fish from the river. Bear will have a function hunt_for_fish( River ) which takes a River pbject as an argument. Inside it will check if there is any fish in the river, take the first fish and bear will eat that fish










  # def test_eat_fish_from_river__no_fish()
  #   @bear1.hunt_for_fish(@river)
  #
  #   assert_equal(true, @bear1.is_starving? )#full_bear.empty?)
  #  end
  #
  # def test_eat_fish_from_river__fish()
  #
  # end

  #
  # def test_digest__bear_stomach_full()
  #   full_bear = Bear.new("Fatty")
  #   assert_equal([], full_bear.digest)
  # end

#I tried to call the eat_a_fish method on a bear object, but digest does not work for what is returned from eat_a_fish (an array), so I've had to add in a second argument to my bear object.

  def test_digest__bear_stomach_empty()
    assert_equal([], @bear1.digest)
  end

end
