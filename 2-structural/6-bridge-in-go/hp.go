package main

import "fmt"

// Concrete Implementation
type Hp struct{}

func (p *Hp) PrintFile() {
	fmt.Println("Printing by a HP Printer")
}
