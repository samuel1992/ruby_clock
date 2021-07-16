class Clock
  MINUTES_IN_A_HOUR = 60
  HOURS_IN_A_DAY = 24

  def initialize(hour: 0, minute: 0)
    @minutes = hour * MINUTES_IN_A_HOUR + minute
  end

  def to_s
    '%02i:%02i' % [hour_from_minutes, only_minute]
  end

  private

  def hour_from_minutes
    @minutes / MINUTES_IN_A_HOUR % HOURS_IN_A_DAY
  end

  def only_minute
    @minutes % MINUTES_IN_A_HOUR
  end
end
