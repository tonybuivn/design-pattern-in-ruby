# frozen_string_literal: true

# The Abstract Class defines a template method that contains a skeleton of some
# algorithm, composed of calls to (usually) abstract primitive operations.
#
# Concrete subclasses should implement these operations, but leave the template
# method itself intact.
class CaffeineBeverage
  # The template method defines the skeleton of an algorithm.
  def prepare_recipe
    boil_water
    brew
    pour_in_cup
    add_condiments
    hook
  end

  # These operations already have implementations
  def boil_water
    puts 'Boiling water'
  end

  def pour_in_cup
    puts 'Pouring into cup'
  end

  # These operations have to be implemented in subclasses
  def brew
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def add_condiments
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # These are "hooks." Subclasses may override them, but it's not mandatory
  # since the hooks already have default (but empty) implementation. Hooks
  # provide additional extension points in some crucial places of the algorithm.
  def hook; end
end
