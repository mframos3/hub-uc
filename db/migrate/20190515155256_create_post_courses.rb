class CreatePostCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :post_courses do |t|
      t.references :post, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
