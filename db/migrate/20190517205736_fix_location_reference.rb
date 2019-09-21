class FixLocationReference < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :location
    add_column :rooms, :ubication, :string
  end
end
