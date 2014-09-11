class Pizza
  attr_accessor :vegetable, :sauce, :cheese, :sauce, :toppings, :price, :observations

  def initialize name
    @observations = []
    @name = name
  end

  def add_toppings *args
    @toppings = args
    self
  end

  def method_missing method_name, *args
    method_name = method_name.to_s
    if method_name =~ /^add_/
      method_name = method_name.split('add_')[1]
      self.send(method_name + "=", args[0])
    else
      @observations << method_name
    end
    return self
  end

  def set_price name
    @price = name
    self
  end
end