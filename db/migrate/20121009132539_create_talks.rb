class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name
      t.text :description
      t.string :link
      t.datetime :horary
      t.references :speaker
      t.references :room

      t.timestamps
    end
    add_index :talks, :speaker_id
    add_index :talks, :room_id

    add_foreign_key :talks, :speakers, :column => :speaker_id
    add_foreign_key :talks, :rooms, :column => :room_id
  end
end
