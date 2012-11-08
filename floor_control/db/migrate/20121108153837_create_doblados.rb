class CreateDoblados < ActiveRecord::Migration
  def change
    create_table :doblados do |t|
      t.integer :ancho_solapa
      t.integer :distancia_selle_u
      t.integer :peso_total
      t.integer :tiempo_montaje

      t.timestamps
    end
  end
end
