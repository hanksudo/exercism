package isogram

import (
	"unicode"
)

func IsIsogram(word string) bool {
	runes := []rune{}
	for _, c := range word {
		if !unicode.IsLetter(c) {
			continue
		}
		for _, r := range runes {
			if unicode.ToLower(c) == unicode.ToLower(r) {
				return false
			}
		}
		runes = append(runes, c)
	}
	return true
}
