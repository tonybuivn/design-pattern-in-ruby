package main

import "fmt"

func main() {

	pizza := &VeggieMania{}

	fmt.Printf("Price of veggeMania is %d\n", pizza.getPrice())

	// Add cheese topping
	pizzaWithCheese := &CheeseTopping{pizza: pizza}
	fmt.Printf("Price of veggeMania with cheese topping is %d\n", pizzaWithCheese.getPrice())

	// Add tomato topping
	pizzaWithCheeseAndTomato := &TomatoTopping{pizza: pizzaWithCheese}
	fmt.Printf("Price of veggeMania with tomato and cheese topping is %d\n", pizzaWithCheeseAndTomato.getPrice())
}
