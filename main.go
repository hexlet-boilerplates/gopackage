// Package main prints a greeting.
package main

import (
	"fmt"
	"hexlet-boilerplates/gopackage/src"
)

func main() {
	// Get a greeting message and print it.
	message := src.Hello("Gladys")
	fmt.Println(message)
}
