class ChangeMessageParams < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :sender, :sender_id
    rename_column :messages, :receptor, :receiver_id
  end
end
