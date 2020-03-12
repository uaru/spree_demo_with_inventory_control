# This migration comes from spree_inventory_control (originally 20200305173141)
class CreateSpreeInventoryControls < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_inventory_controls do |t|
      t.integer :stock_location_id, null: false
      t.datetime :control_start_at, null: false
      t.datetime :control_end_at
      t.string :name, null: false
      t.text :notes

      t.timestamps
    end
  end
end
