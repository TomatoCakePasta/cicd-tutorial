package main

import "fmt"

// variable to embed the version via ldflags flags during build time
var version string

func main() {
	fmt.Printf("Example %s\n", version)
}
