class CreateWaterSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :water_supplies do |t|
      t.integer :utility_charge_id
      t.integer :cost

      t.timestamps
    end
  end
end
