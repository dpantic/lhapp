class CreateAircraftDocuments < ActiveRecord::Migration
  def change
    create_table :aircraft_documents do |t|
      t.string :operator
      t.string :ac_type
      t.string :document
      t.string :revision
      t.string :rev_checked

      t.timestamps
    end
  end
end
