class AddValueToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :return_date, :string
  end
end
