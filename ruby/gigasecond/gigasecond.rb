ONE_BILLION = 1_000_000_000

class Gigasecond
  def self.from(datetime)
    datetime + ONE_BILLION
  end
end
