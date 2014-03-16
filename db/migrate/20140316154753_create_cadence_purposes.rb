class CreateCadencePurposes < ActiveRecord::Migration
  def change
    create_table :cadence_purposes do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
