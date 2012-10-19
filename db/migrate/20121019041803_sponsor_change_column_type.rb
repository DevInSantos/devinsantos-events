class SponsorChangeColumnType < ActiveRecord::Migration
  def change
    rename_column :sponsors, :type, :sponsorship_type
  end
end