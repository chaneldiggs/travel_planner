class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :dates
      t.string :city
      t.string :country
      t.string :departing_flight
      t.string :return_flight

      t.timestamps
    end
  end
end
