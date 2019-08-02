class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.references :exam_session
      t.string :index_no
      t.references :student
      t.timestamps
    end
  end
end
