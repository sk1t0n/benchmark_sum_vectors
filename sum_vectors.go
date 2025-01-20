package main

import "fmt"

func main() {
	a := make([]int, 10_000_000, 10_000_000)
	b := make([]int, 10_000_000, 10_000_000)

	for i := 1; i <= 10_000_000; i++ {
		a[i-1] = i
		b[i-1] = i
	}

	for i := 0; i < len(a); i++ {
		a[i] += b[i]
	}

	fmt.Printf("last element = %d\n", a[len(a)-1])
}
