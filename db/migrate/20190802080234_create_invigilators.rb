class CreateInvigilators < ActiveRecord::Migration[5.2]
  def change
    create_table :invigilators do |t|
      t.references :staff
      t.references :examination
      t.references :venue_allocation
      t.string :position
      t.timestamps
    end
  end
end
