class AddColumnEventIdToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :event_id, :integer

    add_index :rooms, :event_id

    add_foreign_key :rooms, :events, :column => :event_id
  end
end