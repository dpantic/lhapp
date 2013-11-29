class CreateIpcSeats < ActiveRecord::Migration
  def change
    create_table :ipc_seats do |t|
      t.string :manufacturer
      t.string :modell_series
      t.string :description
      t.string :add_infos
      t.string :part_number
      t.string :add_material_info
      t.string :cmm

      t.timestamps
    end
  end
end
