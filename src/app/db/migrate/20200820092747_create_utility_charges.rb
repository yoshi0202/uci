class CreateUtilityCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :utility_charges do |t|

      t.timestamps
    end
  end
end
