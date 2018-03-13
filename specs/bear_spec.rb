require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")#, [])
    @bear2 = Bear.new("Grizzly")#, [])
    @bear3 = Bear.new("Carebear")#, [])

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



end
