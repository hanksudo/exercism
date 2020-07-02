import Foundation

struct Gigasecond {
    let description: String
    static let formatter: DateFormatter = {
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        f.timeZone = TimeZone(secondsFromGMT: 0)
        return f
    }()

    init?(from dateString: String) {
        guard let date = Gigasecond.formatter.date(from: dateString) else { return nil }
        let hence = Date(timeInterval: .oneBillion, since: date)
        self.description = Gigasecond.formatter.string(from: hence)
    }
}

fileprivate extension TimeInterval {
    static let oneBillion = 1_000_000_000.0
}
