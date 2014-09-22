class Pizza
  attr_accessor :name, :vegetable, :sauce, :cheese, :sauce, :toppings, :price

  def initialize name
    @name = name
  end

  def add_vegetable name
    @vegetable = name
  end

  def add_sauce name
    @sauce = name
  end

  def add_cheese name
    @cheese = name
  end

  def add_toppings *args
    raise "Too many toppings man!" if args.size > 4
    @toppings = args
  end

  def set_price name
    @price = name
  end

end