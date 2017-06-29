# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  name          :string
#  address_city  :string
#  address_state :string
#  start_date    :date
#  end_date      :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  score         :integer
#  degrees       :integer
#  cents         :integer
#  currency      :integer
#  color_theme   :string
#  size          :string
#

class Event < ApplicationRecord

  # Arguments together all the time - Address (address_city, address_state) and DateRange (start_date, end_date)
  def address
    Address.new(address_city, address_state)
  end

  def address=(address)
    self.address_city = address.city
    self.address_state = address.state
  end

  def date_range
    DateRange.new(start_date, end_date)
  end

  def date_range=(date_range)
    self.start_date = date_range.start_date
    self.end_date = date_range.end_date
  end

  # One attribute with behaviour - Temperature (degrees)
  def temperature
    Temperature.new(degrees)
  end

  def temperature=(temperature)
    self.degrees = temperature.degrees
  end

  # Two inseparable attributes value and unit - Money (cents, currency)
  def cost
    Money.new(cents, currency)
  end

  def cost=(cost)
    self.cents = cost.cents
    self.currency = cost.currency.to_s
  end

  # Class enumerable - Color (color) and Size (size)
end
