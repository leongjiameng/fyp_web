class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :student_id, :utar_student_no
    rename_column :staffs, :staff_id, :utar_staff_no
  end
end
