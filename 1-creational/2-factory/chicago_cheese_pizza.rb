# frozen_string_literal: true

require_relative './pizza'

# Concrete Products provide various implementations of the Product interface.
class ChicagoCheesePizza < Pizza
  # def operation
  #   'result of the concrete product 2'
  # end

  def initialize
    @name = 'Chicago Style Deep Dish Cheese Pizza'
    @dough = 'Extra Thick Crust Dough'
    @sauce = 'Plum Tomato Sauce'
  end
end
