load 'pizza.rb'
load 'menu.rb'

Menu.add_pizza "Mussarela" do
  add_vegetable 'tomatoes'
  add_sauce 'barbecue'
  add_cheese 'cheddar'
  add_toppings 'chicken', 'peperoni', 'Bacon', 'Eggs'
  set_price 32.33
end