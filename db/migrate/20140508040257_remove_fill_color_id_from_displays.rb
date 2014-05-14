class RemoveFillColorIdFromDisplays < ActiveRecord::Migration
  def change
    remove_column :displays, :fill_id
    remove_column :displays, :border_id
  end
end
