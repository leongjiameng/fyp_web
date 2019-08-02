class CreateVenueAllocations < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_allocations do |t|
      t.references :resource
      t.references :examination
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity_used
      t.timestamps
    end
  end
end
