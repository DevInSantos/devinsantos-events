class ChangeSpeakerDescriptionToText < ActiveRecord::Migration
  def change
    change_column :speakers, :description, :text
  end
end