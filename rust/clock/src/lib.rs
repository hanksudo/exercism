use std::fmt;
#[derive(Debug, PartialEq)]
pub struct Clock {
    minutes: i16,
}

const MINUTES_IN_HOUR: i16 = 60;
const MINUTES_IN_DAY: i16 = 24 * MINUTES_IN_HOUR;

impl Clock {
    pub fn new(hours: i16, minutes: i16) -> Self {
        Self {
            minutes: (hours * MINUTES_IN_HOUR + minutes).rem_euclid(MINUTES_IN_DAY),
        }
    }

    pub fn add_minutes(&self, minutes: i16) -> Self {
        Self::new(0, self.minutes + minutes)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{:02}:{:02}",
            self.minutes / MINUTES_IN_HOUR,
            self.minutes % MINUTES_IN_HOUR
        )
    }
}
