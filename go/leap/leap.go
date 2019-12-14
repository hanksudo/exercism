package leap

// IsLeapYear - Given a year, report if it is a leap year.
func IsLeapYear(year int) bool {
	return (year%400 == 0) || (year%4 == 0 && year%100 != 0)
}
