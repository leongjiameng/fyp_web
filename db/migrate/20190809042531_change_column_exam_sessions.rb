class ChangeColumnExamSessions < ActiveRecord::Migration[5.2]
  def change
    rename_column :exam_sessions, :from, :start_time
    rename_column :exam_sessions, :until, :end_time
  end
end
