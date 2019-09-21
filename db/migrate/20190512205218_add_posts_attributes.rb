class AddPostsAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :course, :string
    add_column :posts, :content, :string
    add_column :posts, :description, :string
    add_column :posts, :score, :float
  end
end
