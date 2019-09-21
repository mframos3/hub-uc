class CreatePostUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :post_users do |t|
      t.references :user, foreign_key: true
      t.references :posts, foreign_key: true

      t.timestamps
    end
  end
end
