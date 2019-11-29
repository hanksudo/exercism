package hamming

import (
	"errors"
)

// Distance - Calculate the Hamming Distance between two DNA strands.
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return 0, errors.New("the Hamming distance is only defined for sequences of equal length")
	}
	distance := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			distance++
		}
	}
	return distance, nil
}
