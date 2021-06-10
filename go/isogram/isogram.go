package isogram

import "unicode"

// IsIsogram - Determine if a word or phrase is an isogram.
func IsIsogram(word string) bool {
	mapping := map[rune]bool{}

	for _, c := range word {
		if !unicode.IsLetter(c) {
			continue
		}
		_, has := mapping[unicode.ToLower(c)]
		if has {
			return false
		}
		mapping[unicode.ToLower(c)] = true
	}
	return true
}
