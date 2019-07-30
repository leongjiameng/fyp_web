class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :staff_id
      t.string :position
      t.references :department
      t.timestamps
    end
  end
end
