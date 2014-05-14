class AddFillColorIdToDisplays < ActiveRecord::Migration
  def change
    add_column :displays, :fill_color_id, :integer
    add_column :displays, :border_color_id, :integer
  end
end
