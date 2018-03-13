require('minitest/autorun')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

def setup
  @fish1 = Fish.new("Trout")
  @fish2 = Fish.new("Salmon")
  @fish3 = Fish.new("Sturgeon")
end

def test_fish_getter()
  assert_equal("Trout", @fish1.species)
  assert_equal("Salmon", @fish2.species)
  assert_equal("Sturgeon", @fish3.species)
end




end
