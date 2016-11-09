class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :em_contact
      t.string :em_number
      t.string :notes
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
