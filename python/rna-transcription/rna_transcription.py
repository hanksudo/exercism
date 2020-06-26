def to_rna(dna_strand):
    transcribed = {
        "C": "G",
        "G": "C",
        "T": "A",
        "A": "U",
    }
    ans = ""
    for c in dna_strand:
        ans += transcribed.get(c, "")

    return ans
