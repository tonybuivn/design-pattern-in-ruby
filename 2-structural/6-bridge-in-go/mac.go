package main

import "fmt"

// Refined Abstraction
type Mac struct {
	printer Printer
}

func (m *Mac) Print() {
	fmt.Println("Print request for Mac.")
	m.printer.PrintFile()
}

func (m *Mac) SetPrinter(p Printer) {
	m.printer = p
}
