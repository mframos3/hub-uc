class DropOldJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :events_users
  end
end
