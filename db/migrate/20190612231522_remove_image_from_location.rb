class RemoveImageFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :image
  end
end
