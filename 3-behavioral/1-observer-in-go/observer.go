package main

// Observer interface
type Observer interface {
	update(string)
	getID() string
}
