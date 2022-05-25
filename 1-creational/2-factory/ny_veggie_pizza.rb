# frozen_string_literal: true

require_relative './pizza'

# Concrete Products provide various implementations of the Product interface.
class NYVeggiePizza < Pizza
  # def operation
  #   'result of the concrete product 1'
  # end

  def initialize
    @name = 'Something'
    @dough = 'Something'
    @sauce = 'Something'
  end
end
