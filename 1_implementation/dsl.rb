Pizza = Struct.new(:vegetable, :sauce, :cheese, :sauce, :topping, :price)

def add_vegetable name
  @pizza.vegetable = name
end

def add_sauce name
  @pizza.sauce = name
end

def add_cheese name
  @pizza.cheese = name
end

def add_topping name
  @pizza.topping = name
end

def set_price name
  @pizza.price = name
end

def create_pizza name
  @pizza = Pizza.new
  yield if block_given?
end

create_pizza "Mussarela" do
  add_vegetable 'tomatoes'
  add_sauce 'barbecue'
  add_cheese 'cheddar'
  add_topping 'chicken'
  set_price 32.33
end

