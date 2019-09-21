class ForeignKeyRoomsLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :location_id, :integer
    add_foreign_key :rooms, :locations
  end
end
