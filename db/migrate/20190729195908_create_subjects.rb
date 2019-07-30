class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :unit_code
      t.string :subject_name
      t.timestamps
    end
  end
end
