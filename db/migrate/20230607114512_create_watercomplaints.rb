class CreateWatercomplaints < ActiveRecord::Migration[6.1]
  def change
    create_table :water_complaints do |t|
      t.string :name
      t.string :location
      t.string :description
      t.boolean :account_status, default: false
      t.timestamps null: false
    end
 
  end
end
