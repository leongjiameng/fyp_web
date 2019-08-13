class CreateClashingReports < ActiveRecord::Migration[5.2]
  def change
    create_table :clashing_reports do |t|
      t.references :exam_registered1, foreign_key: {to_table:'exam_registereds'}
      t.references :exam_registered2, foreign_key: {to_table:'exam_registereds'}
      t.string :message
      t.references :candidate
      t.timestamps
    end
  end
end
