class CreateIpcCatalogs < ActiveRecord::Migration
  def change
    create_table :ipc_catalogs do |t|
      t.string :ac_type :size => 4
      t.string :ata :size => 5
      t.string :system
      t.string :fin
      t.string :additional_infos
      t.string :part_number
      t.string :ipc
      t.string :main_topic

      t.timestamps
    end
  end
end
