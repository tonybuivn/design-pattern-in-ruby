# frozen_string_literal: true

require_relative './pizza'

# Concrete Products provide various implementations of the Product interface.
class NYCheesePizza < Pizza
  # def operation
  #   'result of the concrete product 1'
  # end

  def initialize
    @name = 'NY Style Sauce and Cheese Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
  end
end
