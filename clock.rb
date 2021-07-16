class Clock
  MINUTES_IN_A_HOUR = 60
  HOURS_IN_A_DAY = 24

  attr_reader :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = hour * MINUTES_IN_A_HOUR + minute
  end

  def to_s
    '%02i:%02i' % [hour, minute]
  end

  def +(clock)
    self.class.new(minute: @minutes + clock.minutes)
  end

  def -(clock)
    self.class.new(minute: @minutes - clock.minutes)
  end

  def ==(clock)
    to_s == clock.to_s
  end

  private

  def hour
    minutes_to_hours % HOURS_IN_A_DAY
  end

  def minutes_to_hours
    @minutes / MINUTES_IN_A_HOUR
  end

  def minute
    @minutes % MINUTES_IN_A_HOUR
  end
end
