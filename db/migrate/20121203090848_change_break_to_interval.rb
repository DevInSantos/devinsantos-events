class ChangeBreakToInterval < ActiveRecord::Migration
  def change
    rename_table :breaks, :intervals
  end
end