class AddValueToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :user_id, :string
  end
end
