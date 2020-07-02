import Foundation

func abbreviate(_ phrase: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[a-zA-Z]+")
    let results = regex.matches(in: phrase, range: NSRange(phrase.startIndex..., in: phrase) )
    return results.map {
        Array(phrase)[$0.range.lowerBound].uppercased()
    }.joined()
}
