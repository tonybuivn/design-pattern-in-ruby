# frozen_string_literal: true

# The Creator class declares the factory method that is supposed to return an
# object of a Product class. The Creator's subclasses usually provide the
# implementation of this method.
class PizzaStore
  attr_writer :pizza

  # NOTE: the Creator may also provide some default implementation of the
  # factory method
  def create_pizza(type)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Also note that, despite its name, the Creator's primary responsibility is
  # not creating products. Usually, it contains some core business logic that
  # relies on Product objects, returned by the factory method. Subclasses can
  # indirectly change that business logic by overriding the factory method and
  # returning a different type of product from it.
  def order_pizza(type)
    @pizza = create_pizza(type)
    @pizza.prepare
    @pizza.bake
    @pizza.cut
    @pizza.box

    @pizza
  end
end
