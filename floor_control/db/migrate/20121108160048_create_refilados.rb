class CreateRefilados < ActiveRecord::Migration
  def change
    create_table :refilados do |t|
      t.boolean :semitubular
      t.boolean :tubular
      t.boolean :laminar
      t.boolean :abrir
      t.boolean :partir
      t.boolean :descolillar
      t.boolean :rebobinar
      t.boolean :microperforar
      t.integer :diametro_max_bobina
      t.integer :metros_lin_program

      t.timestamps
    end
  end
end
