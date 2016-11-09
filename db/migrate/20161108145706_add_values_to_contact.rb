class AddValuesToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :user_id, :integer
    add_column :contacts, :trip_id, :integer
  end
end
