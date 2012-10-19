class AddEventToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :event_id, :integer

    add_foreign_key :sponsors, :events, :column => :event_id
  end
end