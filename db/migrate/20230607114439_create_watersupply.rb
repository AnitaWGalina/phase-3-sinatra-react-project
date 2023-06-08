class CreateWatersupply < ActiveRecord::Migration[6.1]
  def change
    create_table :watersupply do |t|
      t.string :name
      t.string :location
      t.string :watersupplyreceived
      t.boolean :account_status, default: false
      t.timestamps null: false
      
    end
  end

end
