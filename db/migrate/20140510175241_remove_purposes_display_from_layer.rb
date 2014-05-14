class RemovePurposesDisplayFromLayer < ActiveRecord::Migration
  def change
    remove_column :layers, :display
    remove_column :layers, :cadence_purpose    
    add_column    :layers, :display_id, :integer
    add_column    :layers, :cadence_purpose_id, :integer
  end
end
