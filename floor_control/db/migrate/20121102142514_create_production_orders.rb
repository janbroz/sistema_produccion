class CreateProductionOrders < ActiveRecord::Migration
  def change
    create_table :production_orders do |t|
      t.date :initial_date
      t.date :delivery_date
      t.string :description
      t.string :client_id
      t.string :buy_order_from_client
      t.string :order_reference
      t.integer :user_id
      t.string :observations

      t.timestamps
    end
  end
end
