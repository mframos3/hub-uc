class AddRoomsAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :location, :string
    add_column :rooms, :availability, :float
    add_column :rooms, :noise, :float
    add_column :rooms, :sockets, :float
  end
end
