class AddStateToProductionOrder < ActiveRecord::Migration
  def change
    add_column :production_orders, :state, :string

  end
end
