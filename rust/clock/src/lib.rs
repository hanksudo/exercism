use std::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock {
    minutes: i32,
}

const MINUTES_OF_DAY: i32 = 60 * 24;

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            minutes: (hours * 60 + minutes).rem_euclid(MINUTES_OF_DAY),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Self::new(0, self.minutes + minutes)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{:02}:{:02}",
            (self.minutes / 60) % 24,
            self.minutes % 60
        )
    }
}
