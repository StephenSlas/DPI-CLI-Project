require './item'

class ShoppingList
  attr_accessor :item
  
  def initialize 
    @item = []
  end

  def add_item(item) #adds new item to shopping list
    @item.push(item)
  end

  def remove_item(name) #removes item of the given name. Shortcutted by just removing all entries with the same name. Returns true if something was successfully deleted.
    removed = false
    if @item.count == 0 
      puts "Shopping List is empty"
    else
      @item.each do |n|
        if n.name == name
          @item.delete(n)
          removed = true
        end
      end
    end
    return removed
  end

  def list_items #Lists out all items in shopping list in separate lines
    if @item.count == 0
      puts "Shopping List is empty"
    else
      @item.each_with_index do |n, i|
        puts "Item #{(i+1).to_s}: Name: #{n.name}, Price: #{n.price.to_s}, Section: #{n.section}"
      end
    end
  end

  def get_total #Adds up the total price of all items in the list and returns that value. Returns 0 if list is empty.
    total = 0
    if @item.count == 0
      return 0
    else
      @item.each do |n|
        total = total + n.price
      end
    end
    return total
  end
end
