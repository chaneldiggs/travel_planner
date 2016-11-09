class AddValueToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :em_number, :string
  end
end
