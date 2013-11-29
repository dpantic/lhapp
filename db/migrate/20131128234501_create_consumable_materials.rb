class CreateConsumableMaterials < ActiveRecord::Migration
  def change
    create_table :consumable_materials do |t|
      t.string :product_type
      t.string :description
      t.string :add_infos
      t.string :mat_nr
      t.string :part_number

      t.timestamps
    end
  end
end
