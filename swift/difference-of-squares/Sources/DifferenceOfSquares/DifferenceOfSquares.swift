import Foundation

struct Squares {
    let squareOfSum: Int
    let sumOfSquares: Int
    let differenceOfSquares: Int
    
    init(_ number: Int) {
        let sequence = (1...number)
        let sum = Double(sequence.reduce(0, +))
        self.squareOfSum = Int(pow(sum, 2))
        self.sumOfSquares = sequence.reduce(0, { $0 + ($1 * $1) })
        self.differenceOfSquares = self.squareOfSum - self.sumOfSquares
    }
}
