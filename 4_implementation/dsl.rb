load 'pizza.rb'
load 'menu.rb'

# Menu.add_pizza "Mussarela" do
#   add_vegetable 'tomatoes'
#   add_sauce 'barbecue'
#   add_cheese 'cheddar'
#   add_toppings 'chicken', 'peperoni'
#   set_price 32.33
# end

Menu.add_pizza('Peperoni').add_vegetable('tomatoes').add_sauce('curry').add_toppings('bacon', 'cucumber').set_price(30)