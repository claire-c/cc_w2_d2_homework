require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

def setup
  @bear1 = Bear.new("Yogi")
  @bear2 = Bear.new("Grizzly")
  @bear3 = Bear.new("Carebear")

  @fish1 = Fish.new("Trout")
  @fish2 = Fish.new("Salmon")
  @fish3 = Fish.new("Sturgeon")

  @river = River.new("Yukon")
end

def test_bear_getter()
  assert_equal("Yogi", @bear1.name)
  assert_equal("Grizzly", @bear2.name)
  assert_equal("Carebear", @bear3.name)
end


end
