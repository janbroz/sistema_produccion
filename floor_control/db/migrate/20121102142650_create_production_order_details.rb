class CreateProductionOrderDetails < ActiveRecord::Migration
  def change
    create_table :production_order_details do |t|
      t.integer :production_order_id
      t.integer :material_id
      t.integer :quantity

      t.timestamps
    end
  end
end
