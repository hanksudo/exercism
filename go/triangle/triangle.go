package triangle

import "math"

// Kind of triangle
type Kind int

const (
	NaT Kind = iota // NaT - not a triangle
	Equ             // Equ - equilateral
	Iso             // Iso - isosceles
	Sca             // Sca - scalene
)

// KindFromSides - determine trriangle kind from sides
func KindFromSides(a, b, c float64) Kind {
	if !(a+b >= c && b+c >= a && a+c >= b) || !(a > 0 && b > 0 && c > 0) || (a == math.Inf(1) || b == math.Inf(1) || c == math.Inf(1)) {
		return NaT
	} else if a == b && b == c {
		return Equ
	} else if (a == b && b != c) || (b == c && c != a) || (a == c && c != b) {
		return Iso
	} else if a != b && b != c {
		return Sca
	}
	return NaT
}
