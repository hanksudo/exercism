package scrabble

import "strings"

func Score(word string) int {
	scoreMapping := map[string]int{
		"aeioulnrst": 1,
		"dg":         2,
		"bcmp":       3,
		"fhvwy":      4,
		"k":          5,
		"jx":         8,
		"qz":         10,
	}
	scores := 0

	for _, c := range strings.ToLower(word) {
		for chars, score := range scoreMapping {
			index := strings.IndexRune(chars, c)
			if index != -1 {
				scores += score
				break
			}
		}
	}
	return scores
}
