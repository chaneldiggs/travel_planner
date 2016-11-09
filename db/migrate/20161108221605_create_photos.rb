class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
