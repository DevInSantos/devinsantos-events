class CreateBreaks < ActiveRecord::Migration
  def change
    create_table :breaks do |t|
      t.string :description
      t.datetime :horary
      t.references :event

      t.timestamps
    end

    add_index :breaks, :event_id
    add_foreign_key :breaks, :events, :column => :event_id
  end
end
