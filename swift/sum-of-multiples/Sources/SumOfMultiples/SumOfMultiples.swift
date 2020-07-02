//Solution goes in Sources
struct SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        guard limit > 0 else { return 0 }
        return (1..<limit).filter { num in
            inMultiples.contains { num.isMultiple(of: $0) }
        }.reduce(0, +)
    }
}
