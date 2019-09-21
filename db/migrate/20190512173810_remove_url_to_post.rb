class RemoveUrlToPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :url
  end
end
