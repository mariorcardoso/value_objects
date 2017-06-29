class AddCurrencyToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :currency, :integer
  end
end
