class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :em_contact
      t.text :notes
      t.string :image

      t.timestamps
    end
  end
end
