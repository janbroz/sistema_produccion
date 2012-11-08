class AddProductionOrderIdToProceso < ActiveRecord::Migration
  def change
    add_column :procesos, :production_order_id, :integer

  end
end
