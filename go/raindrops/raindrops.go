package raindrops

import (
	"fmt"
)

// Convert a number into a string that contains raindrop sounds
func Convert(number int) string {
	result := ""
	sounds := []string{"Pling", "Plang", "Plong"}
	factors := [3]int{3, 5, 7}

	for idx, factor := range factors {
		if number%factor == 0 {
			result += sounds[idx]
		}
	}
	if result == "" {
		return fmt.Sprintf("%d", number)
	}
	return fmt.Sprintf("%s", result)
}
