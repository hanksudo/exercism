import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
        
        init(_ number: Int) {
            let message = "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)"
            self = number > 64 ? .inputTooHigh(message) : .inputTooLow(message)
        }
    }

    static func square(_ number: Int) throws -> UInt64 {
        guard 1...64 ~= number else { throw GrainsError(number) }
        return UInt64(1) << UInt64(number - 1)
    }

    static let total = UInt64.max
}
