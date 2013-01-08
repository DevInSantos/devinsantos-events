class AddPriorityToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :priority, :integer

    add_index :rooms, :priority
  end
end
