# frozen_string_literal: true

require_relative './beverage'

# Concrete Components provide default implementations of the operations. There
# might be several variations of these classes.
class Espresso < Beverage
  def description
    'Espresso'
  end

  def cost
    2
  end
end
