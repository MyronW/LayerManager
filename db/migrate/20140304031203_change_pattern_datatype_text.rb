class ChangePatternDatatypeText < ActiveRecord::Migration
  def up
    change_column :stipples, :pattern, :text
  end
  def down
    change_column :stipples, :pattern, :text
  end
end
