require_relative "item"
require_relative "shopping_list"

list = ShoppingList.new #list to use in this instance

puts "Welcome to your Shopping List!"
while 1 #infite loop
  puts "Please select a number from the following:\n  1: Add Item\n  2: Remove Item\n  3: List Items\n  4: Get Total\n  5: Exit"
  option = gets.chomp
  case option

  when "5" #exits loop/app
    break
  
  when "1" #add item
    puts "Name of item: "
    name = gets.chomp
    puts "Price of item: "
    price = gets.chomp
    puts "Section item can be found in: "
    section = gets.chomp
    item = Item.new(name, price.to_f, section) 
    list.add_item(item) #add to list
  
  when "2" #remove item
    puts "Name of item to remove: "
    name = gets.chomp
    if list.remove_item(name) #returns true if an item was removed and false if not
      puts "#{name} succesfully removed"
    else
      puts "#{name} not found in list"
    end
  
  when "3" #list items
    list.list_items

  when "4" #get total
    puts "The total cost of all items is: #{list.get_total}"

  end
end
