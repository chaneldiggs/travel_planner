class AddValueToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :trip_id, :integer
  end
end
