class AddColumnsToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :sender, :bigint
    add_column :messages, :receptor, :bigint
    add_column :messages, :title, :string
    add_column :messages, :content, :string
  end
end
