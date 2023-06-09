class RenameWaterSupply < ActiveRecord::Migration[6.1]
  def change
    rename_table :water_supply, :water_supplies
  end
end
