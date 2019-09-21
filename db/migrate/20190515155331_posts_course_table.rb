class PostsCourseTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :post_users
    drop_table :post_courses
  end
end
