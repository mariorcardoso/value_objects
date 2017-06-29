class FixColumnNameInEvent < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :temperature, :degrees
  end
end
