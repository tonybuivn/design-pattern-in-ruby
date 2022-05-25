# frozen_string_literal: true

# Decorator is a structural pattern that allows adding new behaviors to
# objects dynamically by placing them inside special wrapper objects.

# Usage in rails : http://rubyblog.pro/2016/10/decorator-pattern-and-usageof-simpledelegator
# Decorator will be useful if you want to extend behavior of basic class
# by new feature. Also it's good to have decorators to decouple object's logic
# from object's presentation.

# Can use gem draper in rails-app

require_relative './espresso'
require_relative './house_blend'
require_relative './mocha'
require_relative './whip'

def operation(component)
  puts "Order: #{component.description}"
  puts "Price: $#{component.cost}"
end

puts '===== I want to order Expresso'
expresso = Espresso.new
operation(expresso)

puts '===== I want to order House Blend with Mocha and Whip'
house_blend = HouseBlend.new
house_blend_mocha = Mocha.new(house_blend)
house_blend_mocha_whip = Whip.new(house_blend_mocha)
operation(house_blend_mocha_whip)
