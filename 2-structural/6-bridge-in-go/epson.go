package main

import "fmt"

// Concrete Implementation
type Epson struct{}

func (p *Epson) PrintFile() {
	fmt.Println("Printing by a EPSON Printer.")
}
