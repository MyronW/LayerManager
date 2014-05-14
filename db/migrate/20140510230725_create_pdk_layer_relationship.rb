class CreatePdkLayerRelationship < ActiveRecord::Migration
  def self.up
    create_table :pdk_layer_relationships, id: false do |t|
      t.integer :pdk_id
      t.integer :layer_id
    end

    add_index :pdk_layer_relationships, [:pdk_id, :layer_id]
  end
  
  def self.down
     drop_table :pdk_layer_relationships 
  end
end
