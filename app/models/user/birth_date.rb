class User::BirthDate
  def initialize(value)
    @value = value
  end

  def to_date
    @value
  end

  def birthday_massage_sending_scheduled_at
    @value - 1.day
  end
end
