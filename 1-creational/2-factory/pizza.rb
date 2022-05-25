# frozen_string_literal: true

# The Product interface declares the operations that all concrete products must
# implement.
class Pizza
  # attr_reader :name, :dough, :sauce
  # attr_writer :name, :dough, :sauce

  # def operation
  #   raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  # end

  def prepare
    puts "Preparing #{@name}"
    puts "Tossing #{@dough} dough..."
    puts "Adding #{@sauce} sauce..."
  end

  def bake
    puts 'Bake for 25 minutes at 350 C degree'
  end

  def cut
    puts 'Cutting the pizza into diagonal slices'
  end

  def box
    puts 'Place pizza in official PizzaStore box'
  end
end
