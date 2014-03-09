class CreateStipples < ActiveRecord::Migration
  def change
    create_table :stipples do |t|
      t.string :name
      t.string :pattern

      t.timestamps
    end
  end
end
