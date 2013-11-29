class CreateAmms < ActiveRecord::Migration
  def change
    create_table :amms do |t|
      t.string :ac_type
      t.string :mm_referenz
      t.string :bauteil
      t.string :eff

      t.timestamps
    end
  end
end
