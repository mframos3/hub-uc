class AddStatusToRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :moderator_requests, :status, :string
  end
end
