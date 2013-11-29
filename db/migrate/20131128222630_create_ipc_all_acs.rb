class CreateIpcAllAcs < ActiveRecord::Migration
  def change
    create_table :ipc_all_acs do |t|
      t.string :system
      t.string :description
      t.string :add_infos
      t.string :part_number
      t.string :mat_nr
      t.string :add_material_info
      t.string :info

      t.timestamps
    end
  end
end
