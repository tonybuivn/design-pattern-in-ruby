package main

// Strategy interface
type EvictionAlgo interface {
	evict(c *Cache)
}
