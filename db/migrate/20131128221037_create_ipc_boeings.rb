class CreateIpcBoeings < ActiveRecord::Migration
  def change
    create_table :ipc_boeings do |t|
      t.string :ac_type
      t.string :ata
      t.string :system
      t.string :description
      t.string :location
      t.string :add_infos
      t.string :part_number
      t.string :add_material_info
      t.string :ipc

      t.timestamps
    end
  end
end
