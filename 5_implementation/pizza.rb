class Pizza
  attr_accessor :name, :vegetable, :cheese, :sauce, :toppings, :price, :observations, :name

  def initialize name
    @observations = []
    @name = name
  end

  def add_toppings *args
    @toppings = args
    self
  end

  def print
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
    method_name = method_name.to_s
    if method_name =~ /^add_|set_/
      method_name = method_name.split(/^add_|set_/)[1]
      self.send(method_name + "=", args[0])
    else
      @observations << method_name.gsub(/_/, ' ').capitalize
    end
    return self
  end

end