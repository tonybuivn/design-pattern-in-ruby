# frozen_string_literal: true

# The Observer interface declares the update method, used by subjects.
class Observer
  def update(subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def display
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
