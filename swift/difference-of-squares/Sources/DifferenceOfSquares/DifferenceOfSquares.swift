import Foundation

struct Squares {
    var squareOfSum: Int
    var sumOfSquares: Int
    var differenceOfSquares: Int
    
    init(_ number: Int) {
        let sequence = (1...number)
        self.squareOfSum = Int(pow(Double(sequence.reduce(0, +)), 2))
        self.sumOfSquares = sequence.map { $0 * $0 }.reduce(0, +)
        self.differenceOfSquares = self.squareOfSum - self.sumOfSquares
    }
}
