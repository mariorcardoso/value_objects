class AddSizeToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :size, :string
  end
end
