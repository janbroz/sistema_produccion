class CreatePlegados < ActiveRecord::Migration
  def change
    create_table :plegados do |t|
      t.integer :distancia_plegado
      t.integer :tiempo_montaje

      t.timestamps
    end
  end
end
