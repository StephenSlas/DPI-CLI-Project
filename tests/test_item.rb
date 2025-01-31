require 'minitest/autorun'
require './item.rb'

class TestItem < Minitest::Test
  def test_item
    item = Item.new("Carrot", 5.32, "Produce")
    assert_equal "Carrot", item.name, "Name not correctly initialized"
    assert_equal 5.32, item.price, "Price not correctly initialized"
    assert_equal "Produce", item.section, "Section not correctly initialized"
  end
end
