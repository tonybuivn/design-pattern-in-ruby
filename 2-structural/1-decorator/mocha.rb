# frozen_string_literal: true

require_relative './condiment_decorator'

# Concrete Decorators call the wrapped object and alter its result in some way.
class Mocha < CondimentDecorator
  # Decorators may call parent implementation of the operation, instead of
  # calling the wrapped object directly. This approach simplifies extension of
  # decorator classes.
  def description
    "#{@beverage.description}, Mocha"
  end

  def cost
    0.5 + @beverage.cost
  end
end
