# frozen_string_literal: true

require_relative './beverage'

# Concrete Components provide default implementations of the operations. There
# might be several variations of these classes.
class HouseBlend < Beverage
  def description
    'House Blend'
  end

  def cost
    3
  end
end
