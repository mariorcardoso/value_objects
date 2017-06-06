class Event < ApplicationRecord
  def date_range=(date_range)
    self[:start_date] =  date_range.start_date
    self[:end_date] = date_range.end_date
  end

  def date_range
    DateRange.new(start_date, end_date)
  end
end
