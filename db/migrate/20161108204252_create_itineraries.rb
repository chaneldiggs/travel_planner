class CreateItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :itineraries do |t|
      t.string :date
      t.string :activity
      t.integer :user_id

      t.timestamps
    end
  end
end
