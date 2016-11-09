class AddValueToItineraries < ActiveRecord::Migration[5.0]
  def change
    add_column :itineraries, :trip_id, :integer
  end
end
