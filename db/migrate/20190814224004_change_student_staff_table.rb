class ChangeStudentStaffTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :user, index: true
    add_foreign_key :students, :users
    add_reference :staffs, :user, index: true
    add_foreign_key :staffs, :users
  end
end
