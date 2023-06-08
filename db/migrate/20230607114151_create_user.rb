class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :account_status, default: false
      t.timestamps null: false
    end
  end
end
  
