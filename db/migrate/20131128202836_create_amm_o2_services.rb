class CreateAmmO2Services < ActiveRecord::Migration
  def change
    create_table :amm_o2_services do |t|
      t.string :ac_type
      t.string :operator
      t.string :system
      t.string :job
      t.string :amm_referenz

      t.timestamps
    end
  end
end
