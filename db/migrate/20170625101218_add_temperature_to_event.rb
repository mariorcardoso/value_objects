class AddTemperatureToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :temperature, :integer
  end
end
