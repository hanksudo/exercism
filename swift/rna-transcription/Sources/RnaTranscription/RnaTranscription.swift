struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(_ message: String)
    }
}
struct Nucleotide {
    var dna_strand: String = ""
    var transcribed: [Character: Character] = [
        "C": "G",
        "G": "C",
        "T": "A",
        "A": "U",
    ]
    init(_ strand: String) {
        dna_strand = strand
    }
    func complementOfDNA() throws -> String {
        String(try dna_strand.map {
            guard let complement = transcribed[$0] else {
                throw RnaTranscription.TranscriptionError.invalidNucleotide("\($0) is not a valid Nucleotide")
            }
            return complement
        })
    }
}
