class RemoveColumnPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :course_id
    remove_column :courses, :post_id
    add_reference :posts, :course, foreign_key: true
  end
end
