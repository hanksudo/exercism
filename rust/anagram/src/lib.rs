use std::collections::HashSet;

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let mut anagrams: HashSet<&'a str> = HashSet::new();
    for possible_anagram in possible_anagrams {
        if is_anagram(word, possible_anagram) {
            anagrams.insert(possible_anagram);
        }
    }
    anagrams
}

fn is_anagram(word: &str, anagram: &str) -> bool {
    if word.len() != anagram.len() || word.to_lowercase() == anagram.to_lowercase() {
        return false;
    }

    let mut word_chars: Vec<char> = word.to_lowercase().chars().collect();
    let mut anagram_chars: Vec<char> = anagram.to_lowercase().chars().collect();
    word_chars.sort();
    anagram_chars.sort();
    word_chars == anagram_chars
}
