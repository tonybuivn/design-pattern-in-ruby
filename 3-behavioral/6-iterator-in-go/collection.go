package main

// Collection interface
type Collection interface {
	createIterator() Iterator
}
