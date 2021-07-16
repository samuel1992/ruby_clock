class Clock
  MINUTES_IN_A_HOUR = 60
  HOURS_IN_A_DAY = 24

  attr_accessor :minutes

  def initialize(hour: 0, minute: 0, minutes: nil)
    @minutes = minutes || hour * MINUTES_IN_A_HOUR + minute
  end

  def to_s
    '%02i:%02i' % [hour, minute]
  end

  def +(clock)
    Clock.new(minutes: @minutes + clock.minutes)
  end

  def -(clock)
    Clock.new(minutes: @minutes - clock.minutes)
  end

  def ==(clock)
    to_s == clock.to_s
  end

  private

  def hour
    hours = extract_hours_from_minutes
    remove_minutes_from_hours(hours)
  end

  def extract_hours_from_minutes
    @minutes / MINUTES_IN_A_HOUR
  end

  def remove_minutes_from_hours(hours)
    hours % HOURS_IN_A_DAY
  end

  def minute
    @minutes % MINUTES_IN_A_HOUR
  end
end
