# frozen_string_literal: true

require_relative './weather_data'
require_relative './current_condition_display'
require_relative './pressure_display'
require 'pry'

# Observer is a behavioral design pattern that allows some objects
# to notify other objects about changes in their state.

# Declare concrete subject
weather_data = WeatherData.new

# Declare concrete observer
current_condition_display = CurrentConditionDisplay.new
weather_data.attach(current_condition_display)

weather_data.change_measurement(28, 80, 15)
weather_data.change_measurement(29, 70, 15)

pressure_display = PressureDisplay.new
weather_data.attach(pressure_display)
weather_data.change_measurement(30, 75, 25)
