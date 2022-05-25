# frozen_string_literal: true

require_relative './caffeine_beverage'

# Concrete classes have to implement all abstract operations of the base class.
# They can also override some operations with a default implementation.
class Tea < CaffeineBeverage
  def brew
    puts 'Tea brewing: Steeping the tea...'
  end

  def add_condiments
    puts 'Tea: Adding Lemon...'
  end
end
