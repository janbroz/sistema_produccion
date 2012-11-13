class CreateProcessCreationOrders < ActiveRecord::Migration
  def change
    create_table :process_creation_orders do |t|
      t.string :p_name
      t.boolean :p_create
      t.integer :p_order
      t.integer :production_order_id

      t.timestamps
    end
  end
end
