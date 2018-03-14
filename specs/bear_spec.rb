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
    assert_equal(2, @river.fish_count)
  end

  def test_hunt_for_fish__no_fish()
    empty_river = River.new("Polluted", [])
    @bear1.hunt_for_fish(empty_river)
    assert_equal(0, @bear1.stomach.count)
  end


  def test_digest__bear_stomach_empty()
    assert_equal([], @bear1.digest)
  end

  def test_digest__bear_stomach_full()
    @bear1.hunt_for_fish(@river)
    assert_equal([], @bear1.digest)
    assert_equal([], @bear3.digest)
  end



end
