# frozen_string_literal: true

# The Adaptee contains some useful behavior, but its interface is incompatible
# with the existing client code. The Adaptee needs some adaptation before the
# client code can use it.
class Turkey
  # @return [String]
  # def specific_request
  #   '.eetpadA eht fo roivaheb laicepS'
  # end

  def gobble
    puts 'Gobble! Gobble!'
  end

  def fly
    puts 'I am flying a short distance'
  end
end
