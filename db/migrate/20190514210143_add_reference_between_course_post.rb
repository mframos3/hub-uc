class AddReferenceBetweenCoursePost < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :course, :course_id
    add_reference :courses, :post, foreign_key: true
  end
end
