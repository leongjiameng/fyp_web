class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :text
      t.boolean :show_in_app
      t.string :notification_type
      t.boolean :send_notification
      t.boolean :is_test_push
      
      t.timestamps
    end
  end
end
