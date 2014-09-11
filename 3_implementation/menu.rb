class Menu
  @@pizzas = []

  def self.add_pizza name, &block
    pizza = Pizza.new(name)
    pizza.instance_eval(&block) if block_given?
    @@pizzas << pizza
  end


  def self.pizzas
    @@pizzas
  end

  def self.last_pizza
    @@pizzas.last
  end
end
