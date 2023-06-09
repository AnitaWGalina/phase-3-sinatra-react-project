class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :country, :string
  end
  end
