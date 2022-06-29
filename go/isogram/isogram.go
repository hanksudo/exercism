package isogram

import "unicode"

// IsIsogram - Determine if a word or phrase is an isogram.
func IsIsogram(word string) bool {
	mapping := map[rune]bool{}

	for _, c := range word {
		if !unicode.IsLetter(c) {
			continue
		}
		c = unicode.ToLower(c)
		if mapping[c] {
			return false
		}
		mapping[c] = true
	}
	return true
}
