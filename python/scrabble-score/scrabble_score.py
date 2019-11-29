def score(word):
    scores = 0
    for character in word:
        for chars, _score in {
            ("a", "e", "i", "o", "u", "l", "n", "r", "s", "t"): 1,
            ("d", "g"): 2,
            ("b", "c", "m", "p"): 3,
            ("f", "h", "v", "w", "y"): 4,
            ("k",): 5,
            ("j", "x"): 8,
            ("q", "z"): 10
        }.items():
            if character.lower() in chars:
                scores += _score
    return scores
