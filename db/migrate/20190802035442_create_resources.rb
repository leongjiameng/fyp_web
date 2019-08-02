class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :venue_no
      t.integer :capacity
      t.timestamps
    end
  end
end
