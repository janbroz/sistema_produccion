class CreatePista < ActiveRecord::Migration
  def change
    create_table :pista do |t|
      t.integer :refilado_id
      t.integer :numero_pista
      t.integer :medida

      t.timestamps
    end
  end
end
