class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :student_id, unique: true
      t.string :name
      t.references :programme
      t.timestamps
    end
  end
end
