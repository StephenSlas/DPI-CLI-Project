class Item
  attr_accessor :name
  attr_accessor :price
  attr_accessor :section

  def initialize(name, price, section)
    @name = name
    @price = price
    @section = section
  end
end
