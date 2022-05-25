# frozen_string_literal: true

require_relative './coffee'
require_relative './tea'

coffee = Coffee.new
tea = Tea.new

puts '===== Preparing tea...'
tea.prepare_recipe
puts '===== Preparing coffee...'
coffee.prepare_recipe
