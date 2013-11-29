class CreateCmmRevisions < ActiveRecord::Migration
  def change
    create_table :cmm_revisions do |t|
      t.string :ac_type
      t.string :type
      t.string :manufacturer
      t.string :part_number
      t.string :model
      t.string :cmm
      t.string :revision_date
      t.string :issue
      t.string :rev_checked
      t.string :not_in_use

      t.timestamps
    end
  end
end
