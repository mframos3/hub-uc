class AddFieldsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :price, :float
    add_column :events, :max_amount, :integer
    add_column :events, :f_date, :datetime
  end
end
