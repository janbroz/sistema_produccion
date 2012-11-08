class CreateImpresions < ActiveRecord::Migration
  def change
    create_table :impresions do |t|
      t.integer :ficha_tecnica
      t.integer :metros_lin_programacion
      t.integer :tiempo_montaje

      t.timestamps
    end
  end
end
