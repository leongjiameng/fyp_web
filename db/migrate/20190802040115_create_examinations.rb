class CreateExaminations < ActiveRecord::Migration[5.2]
  def change
    create_table :examinations do |t|
      t.references :subject
      t.references :exam_session
      t.integer :duration
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
