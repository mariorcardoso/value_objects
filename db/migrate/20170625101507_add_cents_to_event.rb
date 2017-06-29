class AddCentsToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :cents, :integer
  end
end
