class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :name
      t.text :description
      t.integer :gds_number
      t.integer :gds_purpose
      t.integer :display
      t.integer :cadence_number
      t.integer :cadence_purpose

      t.timestamps
    end
  end
end
