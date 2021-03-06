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

  def test_fish_count__river_empty()
    empty_river = River.new("Polluted", [])
    assert_equal(0, empty_river.fish_count() )
  end

  def test_fish_count__river_has_fish()
    assert_equal(3, @river1.fish_count())
  end

  def test_a_fish_is_born()
    result = @river1.a_fish_is_born("Haddock")
    assert_equal("Haddock", result.species)
    result = @river2.a_fish_is_born("Salmon")
    assert_equal("Salmon", result.species)
    result = @river3.a_fish_is_born("Trout")
    assert_equal("Trout", result.species)
  end

  def test_remove_a_fish()
    @river1.remove_a_fish()
    assert_equal(2, @river1.fish_count)
  end



end
