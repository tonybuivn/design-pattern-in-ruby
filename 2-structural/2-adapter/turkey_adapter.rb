# frozen_string_literal: true

require_relative './duck'

# The Adapter makes the Adaptee's interface compatible with the Target's
# interface.
class TurkeyAdapter < Duck
  def initialize(turkey)
    @turkey = turkey
  end

  # def request
  #   @adaptee.specific_request
  # end

  def quack
    @turkey.gobble
  end

  def fly
    5.times do
      @turkey.fly
    end
  end
end
