class CreateModeratorRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :moderator_requests do |t|
      t.string :request
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
