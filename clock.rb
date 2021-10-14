class Clock
  MINUTES_IN_A_HOUR = 60
  HOURS_IN_A_DAY = 24

  def initialize(hour: 0, minute: 0)
    @total_time_in__minutes = hour * MINUTES_IN_A_HOUR + minute
    @minute = @total_time_in__minutes % MINUTES_IN_A_HOUR
    @hour = @total_time_in__minutes / MINUTES_IN_A_HOUR % HOURS_IN_A_DAY
  end

  def to_minutes
    @total_time_in__minutes
  end

  def to_s
    '%02i:%02i' % [@hour, @minute]
  end

  def +(clock)
    self.class.new(minute: @total_time_in__minutes + clock.to_minutes)
  end

  def -(clock)
    self.class.new(minute: @total_time_in__minutes - clock.to_minutes)
  end

  def ==(clock)
    to_s == clock.to_s
  end
end
