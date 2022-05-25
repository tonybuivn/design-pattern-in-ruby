# frozen_string_literal: true

require_relative './caffeine_beverage'

# Concrete classes have to implement all abstract operations of the base class.
# They can also override some operations with a default implementation.
class Coffee < CaffeineBeverage
  def brew
    puts 'Coffee brewing: Dripping Coffee through filter...'
  end

  def add_condiments
    puts 'Coffee: Adding Sugar and Milk...'
  end
end
