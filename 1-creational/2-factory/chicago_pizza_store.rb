# frozen_string_literal: true

require_relative './pizza_store'
require_relative './chicago_cheese_pizza'
require_relative './chicago_veggie_pizza'

# Concrete Creators override the factory_method in order to change the resulting
# product's type.
class ChicagoPizzaStore < PizzaStore
  # Note that the signature of the method still uses the abstract product type,
  # even though the concrete product is actually returned from the method. This
  # way the Creator can stay independent of concrete product classes.
  def create_pizza(type)
    case type
    when 'cheese'
      ChicagoCheesePizza.new
    when 'veggie'
      ChicagoVeggiePizza.new
    end
  end
end
