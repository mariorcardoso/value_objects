class AddColorThemeToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :color_theme, :string
  end
end
