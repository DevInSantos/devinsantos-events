class AddUrlToEvent < ActiveRecord::Migration
  def change
    add_column :events, :url, :string
    change_column :events, :date, :datetime
  end
end