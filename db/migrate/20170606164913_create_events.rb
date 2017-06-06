class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address_city
      t.string :address_state
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
