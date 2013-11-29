class CreateSmpReferenzs < ActiveRecord::Migration
  def change
    create_table :smp_referenzs do |t|
      t.string :spm_ref
      t.string :bauteil

      t.timestamps
    end
  end
end
