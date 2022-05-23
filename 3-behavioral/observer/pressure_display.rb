# frozen_string_literal: true

require_relative './observer'

# Concrete Observers react to the updates issued
# by the Subject they had been attached to.
class PressureDisplay < Observer
  attr_writer :pressure

  def update(_temperature, _humidity, pressure)
    @pressure = pressure
    display
  end

  def display
    puts "Current pressure: #{@pressure}"
  end
end
