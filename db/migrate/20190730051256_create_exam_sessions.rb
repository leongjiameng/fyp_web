class CreateExamSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_sessions do |t|
      t.string :name
      t.datetime :from
      t.datetime :until
      t.timestamps
    end
  end
end
