class Pizza
  attr_accessor :name, :vegetable, :sauce, :cheese, :sauce, :toppings, :price

  def initialize name
    @name = name
  end

  def add_toppings *args
    @toppings = args
    self
  end

  private

  def method_missing method_name, *args
    method_name = method_name.to_s.split(/^add_|set_/)[1]
    self.send(method_name + "=", args[0])
    self
  end

end