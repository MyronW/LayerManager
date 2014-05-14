class RenameLayerpdkTable < ActiveRecord::Migration
  def self.up
    rename_table :pdk_layer_relationships, :layers_pdks
  end 
  def self.down
    rename_table :layers_pdks, :pdk_layer_relationships
  end
end
