# frozen_string_literal: true

require_relative './subject'

# The Subject owns some important state and notifies observers when the state changes.
class WeatherData < Subject
  attr_writer :temperature, :humidity, :pressure

  # @!attribute observers
  # @return [Array<Observer>] attr_accessor :observers private :observers
  def initialize
    @observers = []
  end

  # @param [Obserser] observer
  def attach(observer)
    puts 'WeatherData Subject: Attach an observer.'
    @observers << observer
  end

  # @param [Obserser] observer
  def detach(observer)
    puts 'WeatherData Subject: Detach an observer.'
    @observers.delete(observer)
  end

  # Trigger an update in each subscriber.
  def notify
    puts 'WeatherData Subject: Notifying observers...'
    @observers.each { |observer| observer.update(@temperature, @humidity, @pressure) }
  end

  def change_measurement(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    notify
  end
end
