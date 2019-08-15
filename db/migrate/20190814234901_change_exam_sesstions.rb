class ChangeExamSesstions < ActiveRecord::Migration[5.2]
  def change
    add_column :exam_sessions, :current, :boolean
  end
end
