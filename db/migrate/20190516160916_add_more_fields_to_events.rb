class AddMoreFieldsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :user_id, :integer
    add_column :events, :room_id, :integer
    add_column :events, :course_id, :integer
    add_foreign_key :events, :users
    add_foreign_key :events, :rooms
    add_foreign_key :events, :courses
  end
end
