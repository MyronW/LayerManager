class ChangeHexToString < ActiveRecord::Migration
  change_table :colors do |t|
    t.change :hex, :string
  end
end
