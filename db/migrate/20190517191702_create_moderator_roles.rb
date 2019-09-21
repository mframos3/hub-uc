class CreateModeratorRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :moderator_roles do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
