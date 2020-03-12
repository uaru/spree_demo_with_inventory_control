# This migration comes from spree_inventory_control (originally 20200305173624)
class CreateSpreeVerifiedInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_verified_inventory_items do |t|
      t.integer :inventory_control_id, null: false
      t.integer :variant_id
      t.string :variant_sku, null: false
      t.integer :count_on_hand
      t.string :notes

      t.index :variant_id
      t.index :variant_sku
      t.index [:variant_sku, :inventory_control_id], unique: true, name: 'verified_inventory_items_variant_inventory_index'

      t.timestamps
    end
  end
end
