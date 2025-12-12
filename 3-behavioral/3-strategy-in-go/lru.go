package main

import "fmt"

// Concrete Strategy
type Lru struct {
}

func (l *Lru) evict(c *Cache) {
	fmt.Println("Evicting by lru strategy")
}
