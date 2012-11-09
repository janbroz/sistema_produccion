class CreateProcesos < ActiveRecord::Migration
  def change
    create_table :procesos do |t|
      t.integer :orden
      t.integer :numero_proceso
      t.integer :ancho_rollo
      t.integer :cantidad
      t.integer :desperdicio
      t.text :observaciones

      t.timestamps
    end
  end
end
