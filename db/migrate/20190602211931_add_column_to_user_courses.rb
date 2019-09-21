class AddColumnToUserCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :user_courses, :role, :string
  end
end
