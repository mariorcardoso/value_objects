class FixColumnTypeInEvent < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :currency, :string
  end
end
