# frozen_string_literal: true

require_relative './observer'

# Concrete Observers react to the updates issued
# by the Subject they had been attached to.
class CurrentConditionDisplay < Observer
  attr_writer :temperature, :humidity

  def update(temperature, humidity, _pressure)
    @temperature = temperature
    @humidity = humidity
    display
  end

  def display
    puts "Current conditions: #{@temperature} C degrees and #{@humidity}% humidity"
  end
end
