# frozen_string_literal: true

# The Target defines the domain-specific interface used by the client code.
class Duck
  # def request
  #   'Target: The default target\'s behavior.'
  # end

  def quack
    puts 'Quack! Quack!'
  end

  def fly
    puts "I'm flying"
  end
end
