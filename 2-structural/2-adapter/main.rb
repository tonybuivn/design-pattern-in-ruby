# frozen_string_literal: true

require_relative './duck'
require_relative './turkey'
require_relative './turkey_adapter'

duck = Duck.new
puts '====== Duck sound'
duck.quack
puts '====== Duck fly'
duck.fly

turkay_adapter = TurkeyAdapter.new(Turkey.new)
puts '====== Turkey Adapter sound'
turkay_adapter.quack
puts '====== Turkey Adapter fly'
turkay_adapter.fly
