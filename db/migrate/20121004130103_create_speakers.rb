class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :description
      t.string :company
      t.string :email

      t.timestamps
    end
  end
end
