# frozen_string_literal: true

require_relative './ny_pizza_store'
require_relative './chicago_pizza_store'

ny_pizza_store = NYPizzaStore.new
chicago_pizza_store = ChicagoPizzaStore.new

cheese_pizza = ny_pizza_store.order_pizza('cheese')
puts "Tony ordered a #{cheese_pizza.name} pizza"

veggie_pizza = chicago_pizza_store.order_pizza('veggie')
puts "Ha ordered a #{veggie_pizza.name} pizza"
