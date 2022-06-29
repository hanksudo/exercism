// Package weather - provide weather condition.
package weather

// CurrentCondition - save current condition.
var CurrentCondition string

// CurrentLocation - save current location.
var CurrentLocation string

// Forecast - print current condition in location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
