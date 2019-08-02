class CreateExamRegistereds < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_registereds do |t|
      t.references :candidate
      t.references :examination
      t.references :venue_allocation
      t.timestamps
    end
  end
end
