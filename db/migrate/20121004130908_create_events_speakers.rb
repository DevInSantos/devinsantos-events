class CreateEventsSpeakers < ActiveRecord::Migration
  def change
    create_table :events_speakers, :id => false do |t|
      t.integer :speaker_id
      t.integer :event_id
    end

    add_index :events_speakers, :speaker_id
    add_index :events_speakers, :event_id

    add_foreign_key :events_speakers, :speakers, :column => :speaker_id
    add_foreign_key :events_speakers, :events, :column => :event_id
  end
end
