class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :address_city
      t.string :address_state

      t.timestamps
    end
  end
end
