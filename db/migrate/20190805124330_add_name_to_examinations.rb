class AddNameToExaminations < ActiveRecord::Migration[5.2]
  def change
    add_column :examinations, :name, :string
  end
end
