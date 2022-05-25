# frozen_string_literal: true

require_relative './beverage'

# The base Decorator class follows the same interface as the other components.
# The primary purpose of this class is to define the wrapping interface for all
# concrete decorators. The default implementation of the wrapping code might
# include a field for storing a wrapped component and the means to initialize it
class CondimentDecorator < Beverage
  attr_accessor :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def description
    @beverage.description
  end

  def cost
    @beverage.cost
  end
end
