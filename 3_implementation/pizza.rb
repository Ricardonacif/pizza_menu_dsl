class Pizza
  attr_accessor :vegetable, :sauce, :cheese, :sauce, :toppings, :price

  def initialize name
    @name = name
  end

  def add_toppings *args
    @toppings = args
  end

  def set_price name
    @price = name
  end

  def to_s
    puts "#{name} - #{price}"
    puts " --------------- "
    puts "Ingredients:"
    puts "Vegetable: #{vegetable}"
    puts "Cheese: #{cheese}"
    puts "Sauce: #{sauce}"
    puts "Toppings: #{toppings.join(', ')}"
    puts "Price: #{price}"
    puts "Observations: #{observations.join(', ')}"
  end

  private

  def method_missing method_name, *args
    method_name = method_name.to_s.split('add_')[1]
    self.send(method_name + "=", args[0])
  end


end