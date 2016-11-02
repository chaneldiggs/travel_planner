class ChangeDataTypeForDates < ActiveRecord::Migration[5.0]
  def self.up
    change_table :trips do |t|
    	t.change :dates, :string
    end
  end
  def self.down
    change_table :trips do |t|
      t.change :dates, :datetime
    end
  end
end
