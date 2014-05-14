class AddPdkTable < ActiveRecord::Migration
  def change
    create_table :pdks do |t|
      t.string :name

      t.timestamps
    end
  end
end
