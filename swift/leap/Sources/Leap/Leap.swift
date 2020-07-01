//Solution goes in Sources
struct Year {
    let isLeapYear: Bool
    init(calendarYear: Int) {
        self.isLeapYear = calendarYear.isMultiple(of: 400) || (calendarYear.isMultiple(of: 4) && !calendarYear.isMultiple(of: 100))
    }
}
