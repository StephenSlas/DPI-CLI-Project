# Shopping List CLI Functional Specification
The Shopping List CLI app provides the user with a simple, command-line interface to maintain a shopping list for purchasable items

## User Stories

### Basic Operations
- As a user, I want to add an item to the list, including its name, price, and section, so I can use it for reference
- As a user, I want to remove an item from the list, for when I purchase it or not longer want to
- As a user, I want to be able to print my list, so that I can see everything I intend to purchase
- As a user, I want to print the totals of all items on my list, so that I know how much everything will cost

### Continuous Operations
- As a user, I want to add or remove multiple items and have access to the current list and total, so that I can use the list efficiently

### Functional Requirements
- The list must prompt the user for a function (add item, remove item, show list, get total, exit)
- The list must prompt the user for the information of an added item (name, price, section)
- The list must prompt the user for the name of an item to remove
- The list must list all items stored when prompted
- The list must allow the user to perform another function after completing one
