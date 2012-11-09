class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.integer :proceso_id
      t.integer :numero_lote
      t.string :lote
      t.float :peso
      t.integer :metros_lineales
      t.date :fecha
      t.float :duracion_turno
      t.integer :user_id

      t.timestamps
    end
  end
end
