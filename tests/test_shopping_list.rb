require 'minitest/autorun'
require './item.rb'
require './shopping_list.rb'

class TestShoppingList < Minitest::Test
  def test_get_total
    item = Item.new("Carrot", 5.32, "Produce")
    item2 = Item.new("Milk", 3.11, "Dairy")
    list = ShoppingList.new
    list.add_item(item)
    list.add_item(item2)
    assert_equal 8.43, list.get_total, "Totals not added correctly"
  end
end
