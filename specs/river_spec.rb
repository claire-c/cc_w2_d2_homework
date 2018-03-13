require('minitest/autorun')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new("Amazon")
    @river2 = River.new("Yukon")
    @river3 = River.new("Nile")
  end

  def test_fish_getter()
    assert_equal("Amazon", @river1.name)
    assert_equal("Yukon", @river2.name)
    assert_equal("Nile", @river3.name)
  end



end
