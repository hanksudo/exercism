package scrabble

import (
	"strings"
	"unicode"
)

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

	for _, c := range word {
		for chars, score := range scoreMapping {
			index := strings.IndexRune(chars, unicode.ToLower(c))
			if index != -1 {
				scores += score
				break
			}
		}
	}
	return scores
}
