class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :name
      t.integer :stipple_id
      t.integer :fill_id
      t.integer :border_id

      t.timestamps
    end
  end
end
