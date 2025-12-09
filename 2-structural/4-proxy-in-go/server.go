package main

// Subject interface
type server interface {
	handleRequest(string, string) (int, string)
}
