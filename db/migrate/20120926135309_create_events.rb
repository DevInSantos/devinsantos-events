class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, :null => false
      t.date :date, :null => false
      t.text :description
      t.string :place, :null => false
      t.string :address, :null => false

      t.timestamps
    end

    add_index :events, :name, :unique => true
    add_index :events, :date
  end
end