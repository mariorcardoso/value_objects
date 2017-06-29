# == Schema Information
#
# Table name: people
#
#  id            :integer          not null, primary key
#  name          :string
#  address_city  :string
#  address_state :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Person < ApplicationRecord
  def address
    Address.new(address_city, address_state)
  end

  def address=(address)
    self.address_city = address.city
    self.address_state = address.state
  end
end
