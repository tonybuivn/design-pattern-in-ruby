# frozen_string_literal: true

# The base Component interface defines operations that can be altered by
# decorators.
class Beverage
  def description
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def cost
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
