class CreateProgrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :programmes do |t|
      t.string :name
      t.references :department
      t.timestamps
    end
  end
end
