# frozen_string_literal: true

require_relative './pizza_store'
require_relative './ny_cheese_pizza'
require_relative './ny_veggie_pizza'

# Concrete Creators override the factory_method in order to change the resulting
# product's type.
class NYPizzaStore < PizzaStore
  # Note that the signature of the method still uses the abstract product type,
  # even though the concrete product is actually returned from the method. This
  # way the Creator can stay independent of concrete product classes.
  def create_pizza(type)
    case type
    when 'cheese'
      NYCheesePizza.new
    when 'veggie'
      NYVeggiePizza.new
    end
  end
end
